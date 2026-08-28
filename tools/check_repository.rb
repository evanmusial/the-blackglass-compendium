#!/usr/bin/env ruby

require "digest"
require "json"
require "pathname"
require "uri"
require "yaml"

ROOT = Pathname(__dir__).parent.realpath
ERRORS = []
SLUG = /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/
ENTRY_ID = /\A[A-Z]+-[0-9]+\.[0-9]+\z/

ENTRY_FIELDS = %w[
  schema_version
  document_type
  id
  title
  slug
  volume
  book
  canonical_designation
  entry_scope
  development_status
  authorial_status
  engineering
  aliases
  military_classification
  origin_classification
  operational_scales
  legal_status
  evidence_model
  source
  entities
  themes
].freeze

REQUIRED_ENTRY_FIELDS = %w[
  schema_version
  document_type
  id
  title
  slug
  volume
  book
  canonical_designation
  entry_scope
  development_status
  authorial_status
  engineering
  operational_scales
  evidence_model
].freeze

ENTRY_SCOPES = %w[
  single-instrument
  device-type
  technology-family
  event
  theoretical-system
].freeze

DEVELOPMENT_STATUSES = %w[draft review adopted retired].freeze
AUTHORIAL_STATUSES = %w[provisional established superseded].freeze
ENTITY_CLASSES = %w[people places institutions events].freeze

def relative(path)
  path.relative_path_from(ROOT).to_s
end

def error(message)
  ERRORS << message
end

def parse_front_matter(path)
  text = path.read
  return nil unless text.start_with?("---\n")

  match = text.match(/\A---\r?\n(.*?)\r?\n---\r?\n(.*)\z/m)
  unless match
    error("#{relative(path)}: front matter is not closed")
    return nil
  end

  metadata = YAML.safe_load(
    match[1],
    permitted_classes: [],
    permitted_symbols: [],
    aliases: false
  )
  unless metadata.is_a?(Hash)
    error("#{relative(path)}: front matter must be a mapping")
    return nil
  end

  body = match[2].sub(/\A\r?\n/, "")
  [metadata, body]
rescue Psych::SyntaxError => e
  error("#{relative(path)}: invalid YAML front matter: #{e.message.lines.first.strip}")
  nil
end

def require_fields(metadata, fields, path)
  missing = fields.reject { |field| metadata.key?(field) }
  error("#{relative(path)}: missing fields: #{missing.join(', ')}") unless missing.empty?
end

def check_slug(value, label, path)
  return if value.is_a?(String) && value.match?(SLUG)

  error("#{relative(path)}: #{label} must be a lowercase kebab-case slug")
end

def check_slug_list(value, label, path)
  unless value.is_a?(Array)
    error("#{relative(path)}: #{label} must be a list")
    return
  end

  value.each { |item| check_slug(item, label, path) }
  error("#{relative(path)}: #{label} contains duplicates") if value.uniq.length != value.length
end

def check_source_concepts(metadata, path)
  return unless metadata.key?("source_concepts")

  concepts = metadata["source_concepts"]
  check_slug_list(concepts, "source_concepts", path)
  return unless concepts.is_a?(Array)

  concepts.each do |slug|
    next unless slug.is_a?(String) && slug.match?(SLUG)

    matches = ROOT.glob("concepts/{proposed,developing,rejected}/#{slug}.md")
    if matches.empty?
      error("#{relative(path)}: source_concepts references missing concept #{slug}")
    elsif matches.length > 1
      error("#{relative(path)}: source_concepts reference #{slug} is ambiguous")
    end
  end
end

def check_numbered_division(value, label, path)
  unless value.is_a?(Hash)
    error("#{relative(path)}: #{label} must contain number and title")
    return
  end

  unless value["number"].is_a?(Integer) && value["number"].positive?
    error("#{relative(path)}: #{label}.number must be a positive integer")
  end
  unless value["title"].is_a?(String) && !value["title"].empty?
    error("#{relative(path)}: #{label}.title must be non-empty")
  end

  unknown = value.keys - %w[number title]
  error("#{relative(path)}: unknown #{label} fields: #{unknown.join(', ')}") unless unknown.empty?
end

def check_source(source, body, path)
  unless source.is_a?(Hash)
    error("#{relative(path)}: source must be a mapping")
    return
  end

  required = %w[exemplar sha256 body_relation]
  missing = required.reject { |field| source.key?(field) }
  unless missing.empty?
    error("#{relative(path)}: source missing fields: #{missing.join(', ')}")
    return
  end

  unknown = source.keys - required
  error("#{relative(path)}: unknown source fields: #{unknown.join(', ')}") unless unknown.empty?

  exemplar = ROOT.join(source["exemplar"].to_s).cleanpath
  unless exemplar.to_s.start_with?(ROOT.to_s + File::SEPARATOR) && exemplar.file?
    error("#{relative(path)}: exemplar does not resolve inside the repository")
    return
  end

  actual_hash = Digest::SHA256.file(exemplar).hexdigest
  unless source["sha256"] == actual_hash
    error("#{relative(path)}: exemplar checksum is #{actual_hash}, not #{source['sha256']}")
  end

  relation = source["body_relation"]
  unless %w[exact-copy-after-front-matter adapted-from-exemplar].include?(relation)
    error("#{relative(path)}: unsupported body_relation #{relation.inspect}")
  end

  if relation == "exact-copy-after-front-matter" && body != exemplar.read
    error("#{relative(path)}: body no longer exactly matches #{relative(exemplar)}")
  end
end

def check_entry(path, metadata, body)
  require_fields(metadata, REQUIRED_ENTRY_FIELDS, path)

  unknown = metadata.keys - ENTRY_FIELDS
  error("#{relative(path)}: unknown entry fields: #{unknown.join(', ')}") unless unknown.empty?

  error("#{relative(path)}: schema_version must be 1") unless metadata["schema_version"] == 1
  unless metadata["document_type"] == "compendium-entry"
    error("#{relative(path)}: document_type must be compendium-entry")
  end
  unless metadata["id"].is_a?(String) && metadata["id"].match?(ENTRY_ID)
    error("#{relative(path)}: invalid entry id")
  end

  check_slug(metadata["slug"], "slug", path)
  check_numbered_division(metadata["volume"], "volume", path)
  check_numbered_division(metadata["book"], "book", path)

  unless ENTRY_SCOPES.include?(metadata["entry_scope"])
    error("#{relative(path)}: invalid entry_scope")
  end
  unless DEVELOPMENT_STATUSES.include?(metadata["development_status"])
    error("#{relative(path)}: invalid development_status")
  end
  unless AUTHORIAL_STATUSES.include?(metadata["authorial_status"])
    error("#{relative(path)}: invalid authorial_status")
  end

  engineering = metadata["engineering"]
  if engineering.is_a?(Hash)
    missing = %w[primary_system traits].reject { |field| engineering.key?(field) }
    error("#{relative(path)}: engineering missing fields: #{missing.join(', ')}") unless missing.empty?
    unknown_engineering = engineering.keys - %w[primary_system traits]
    unless unknown_engineering.empty?
      error("#{relative(path)}: unknown engineering fields: #{unknown_engineering.join(', ')}")
    end
    check_slug(engineering["primary_system"], "engineering.primary_system", path)
    check_slug_list(engineering["traits"], "engineering.traits", path)
  else
    error("#{relative(path)}: engineering must be a mapping")
  end

  %w[military_classification origin_classification legal_status evidence_model].each do |field|
    check_slug(metadata[field], field, path) if metadata.key?(field)
  end
  check_slug_list(metadata["operational_scales"], "operational_scales", path)
  check_slug_list(metadata["themes"], "themes", path) if metadata.key?("themes")

  if metadata.key?("aliases")
    aliases = metadata["aliases"]
    unless aliases.is_a?(Array) && aliases.all? { |item| item.is_a?(String) && !item.empty? }
      error("#{relative(path)}: aliases must be a list of non-empty strings")
    end
  end

  if metadata.key?("entities")
    entities = metadata["entities"]
    if entities.is_a?(Hash)
      unknown_entities = entities.keys - ENTITY_CLASSES
      unless unknown_entities.empty?
        error("#{relative(path)}: unknown entity classes: #{unknown_entities.join(', ')}")
      end
      entities.each { |kind, values| check_slug_list(values, "entities.#{kind}", path) }
    else
      error("#{relative(path)}: entities must be a mapping")
    end
  end

  check_source(metadata["source"], body, path) if metadata.key?("source")
end

def check_markdown_links(path)
  path.read.scan(/\[[^\]]*\]\(([^)]+)\)/).flatten.each do |raw|
    next if raw.match?(/\A(?:https?:|mailto:|#)/)

    target = raw.sub(/\A</, "").sub(/>\z/, "").split("#", 2).first
    next if target.empty?

    decoded = URI.decode_www_form_component(target)
    destination = path.dirname.join(decoded).cleanpath
    error("#{relative(path)}: broken link #{raw}") unless destination.exist?
  rescue ArgumentError
    error("#{relative(path)}: invalid escaped link #{raw}")
  end
end

begin
  JSON.parse(ROOT.join("schema/entry.schema.json").read)
rescue JSON::ParserError => e
  error("schema/entry.schema.json: invalid JSON: #{e.message}")
end

ROOT.glob("**/*.md").sort.each do |path|
  check_markdown_links(path)
  parsed = parse_front_matter(path)
  next unless parsed

  metadata, body = parsed
  check_source_concepts(metadata, path)
  check_entry(path, metadata, body) if metadata["document_type"] == "compendium-entry"
end

if ERRORS.empty?
  puts "Repository checks passed."
  exit 0
end

warn "Repository checks failed:"
ERRORS.each { |message| warn "- #{message}" }
exit 1
