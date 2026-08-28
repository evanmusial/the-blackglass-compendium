# Entry Metadata Reference

## Purpose

YAML front matter files an entry without replacing its prose. Metadata should
contain stable, indexable facts about the document and its classification. It
should not attempt to summarize every narrative claim.

The machine-readable contract is `schema/entry.schema.json`.

## Required fields

### `schema_version`

The metadata schema version used by the entry. The current value is `1`.

### `document_type`

Must be `compendium-entry` for a full entry manuscript.

### `id`

The stable entry identifier shown in the Codex hierarchy, such as `A-7.01`.
Changing a title does not change the identifier.

The meaning of the Rzez prefix `A` has not yet been established. Preserve it;
do not invent a prefix system from a single example.

### `title` and `slug`

`title` is the display title. `slug` is the lowercase, filesystem-safe identity
used in the filename. The Rzez uses `a-7-01-the-rzez`.

### `volume` and `book`

Each is an object with `number` and `title` fields. They reproduce the authored
hierarchy rather than inferring it from directory names.

### `canonical_designation`

The formal technical name used by the Compendium. This may differ from the
common title and aliases.

### `entry_scope`

Describes what the entry represents:

- `single-instrument` — one unique artifact;
- `device-type` — a repeatable device design;
- `technology-family` — a principle, fields, instruments, variants, and events
  treated together;
- `event` — a phenomenon or deployment rather than an instrument;
- `theoretical-system` — a body of engineering not yet tied to a verified device.

The Rzez is a `technology-family` because its name covers the principle, field,
instrument, event, and legendary total technology.

The taxonomy may reserve a scope for a developing concept before it enters this
list. Such a reservation is not valid entry metadata until this reference, the
JSON schema, checker, and entry template are updated together.

### `development_status`

The manuscript lifecycle:

- `draft` — active prose not yet adopted;
- `review` — awaiting continuity or editorial review;
- `adopted` — safe for the collection to cite;
- `retired` — preserved but no longer active.

### `authorial_status`

How strongly the shared setting may rely upon the document:

- `provisional` — usable for development but still flexible;
- `established` — an intentional setting commitment;
- `superseded` — retained for provenance but replaced.

This is separate from in-world evidentiary grades.

### `engineering`

Contains a `primary_system` and a list of behavioral `traits`. The primary system
determines the main volume placement; traits support cross-indexing.

Do not list consequences as mechanisms. For example, `world-terminal` is a
military consequence, not an engineering trait.

### `operational_scales`

The scales at which the technology is known or alleged to function. Current
Rzez-derived vocabulary is:

- `surgical`
- `industrial`
- `siege`
- `strategic`
- `continental`
- `planetary`

This list is expected to grow. Add a term only when an entry demonstrates a
meaningful distinction.

### `evidence_model`

Identifies the in-world source evaluation system used by the entry. The Rzez
uses `codex-grade-a-through-e`.

### `source`

Records provenance for a migrated or adapted entry:

- `exemplar` — repository-relative path to the preserved source;
- `sha256` — checksum of that source at migration time;
- `body_relation` — how the working manuscript relates to the source.

For a new entry with no exemplar, omit `source`.

## Optional but recommended fields

### `aliases`

Alternate names that should appear in an index. Preserve diacritics in display
values even though filenames use plain ASCII where practical.

### `military_classification`

The in-world threat or weapons classification. This is not a substitute for the
engineering system.

### `origin_classification`

The original civil, industrial, medical, scientific, or other classification.
This field helps preserve the Compendium's interest in how useful technology
becomes forbidden technology.

Use it only when evidence supports a prior function or design pressure. If
original purpose is genuinely unknown, omit the field; do not write
`origin_classification: unassigned`, and do not substitute a later military use.
Technology provenance is a separate taxonomy question and does not yet have an
entry-metadata field.

### `legal_status`

A short indexable summary. The prose remains authoritative for legal nuance.

### `entities`

Lists important referenced entities by stable slug, divided into:

- `people`
- `places`
- `institutions`
- `events`

Do not include every passing name. Include entities needed for continuity,
chronology, or navigation.

Celestial placement uses the same place registry as cities and regions. If an
entry introduces a new system, world, moon, or route, add or update the relevant
note under `canon/places/` and review `canon/setting-scope.md`. If it changes the
identity, compiler, edition, or transmission of the collection itself, update
`frame/` rather than attempting to encode the entire framing decision here.

### `themes`

Author-facing thematic tags such as `delayed-failure` or
`appearance-versus-integrity`. Themes are not necessarily terms used in-world.

## Authorial status versus evidentiary grade

These systems answer different questions.

| System | Question |
| --- | --- |
| Authorial status | May another manuscript rely on this setting commitment? |
| Evidentiary grade | How well supported is this claim within the fictional historical record? |

Examples:

- It can be established authorial canon that people tell the Grade E story of
  Saint Rezha, while her supernatural act remains unverified in-world.
- Valec's destruction can be both established history and Grade A evidence.
- A provisional canon note may describe a Grade A event if the author has not
  yet decided whether that event will remain unchanged across the collection.

Metadata must never flatten these distinctions.

## Formatting rules

- Begin and end front matter with `---` on its own line.
- Use lowercase kebab-case for controlled values and entity slugs.
- Quote values containing punctuation when ambiguity is possible.
- Use YAML lists rather than comma-separated strings.
- Keep long analysis in prose or canon notes, not in metadata.
- Update `schema/entry.schema.json` before introducing a new required field.
