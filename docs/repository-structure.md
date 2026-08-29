# Repository Structure

## Design goals

The structure is intended to preserve five properties:

1. **Human readability:** a complete entry can be read without a database,
   build system, or special editor.
2. **Stable provenance:** source exemplars remain available for exact comparison.
3. **Controlled canon growth:** shared setting truth is promoted deliberately
   instead of leaking out of every draft.
4. **Machine legibility:** metadata can produce indexes and detect continuity
   errors without trying to interpret all prose.
5. **Low lock-in:** the repository remains useful in a plain text editor and can
   later feed a website, ebook, database, or graph without becoming dependent
   upon one of them.

## Authority layers

The repository has five distinct content layers. They should not be treated as
interchangeable.

### 1. Preserved sources: `exemplars/`

An exemplar is an original reference document. It may establish tone and contain
material later adopted as canon, but it is not automatically the active version
of an entry.

Exemplars are kept stable so later revisions can answer questions such as:

- What did the source originally say?
- Which material was introduced during taxonomy or continuity work?
- Did restructuring accidentally alter the prose?
- Does a new entry still resemble the quality and voice of the founding entry?

### 2. Active manuscripts: `entries/`

Entries are the working Compendium. Each complete technology entry is one
Markdown file with YAML front matter followed by the full readable manuscript.

The directory hierarchy mirrors the publication hierarchy:

```text
entries/
├── volume-01/
│   └── book-07/
│       └── a-7-01-the-rzez.md
├── volume-02/
│   └── book-04/
│       └── b-4-01-the-closed-night.md
└── volume-03/
    └── book-06/
        └── c-6-01-the-agreement.md
```

Use two digits for directory numbers and lowercase kebab-case for filenames.
The identifier remains uppercase in metadata and prose.

The alphabetic entry-ID prefix matches the numbered volume in the Blackglass
filing layer (`A` for Volume I, `B` for Volume II, `C` for Volume III). The
number before the decimal matches the book, while the two-digit suffix is the
entry sequence within that book. Directories and filenames must agree with the
metadata: `volume-NN/book-NN/<slug>.md`.

Examples:

- Directory: `volume-01/book-07/`
- Filename: `a-7-01-the-rzez.md`
- Entry identifier: `A-7.01`

Do not split a long entry into one file per section merely because it is long.
The complete entry is the principal unit of reading, editing, review, and
publication. Split supporting research or unusually independent appendices only
when they have their own lifecycle.

### 3. Shared setting commitments: `canon/`

Canon notes contain information that other entries may rely upon. They are not a
dump of every proper noun from every draft.

Material belongs in `canon/` when at least one of these is true:

- multiple entries need to use it consistently;
- it determines how new entries are classified;
- changing it would require a continuity review across the collection;
- it is a major chronological, legal, metaphysical, or institutional anchor;
- the author intentionally wants to reserve it as setting truth before its next
  appearance.

Long histories spanning several entities belong in `canon/history/`. A history
note should distinguish authorially established sequence from in-world evidence
grades and unresolved interpretation. Do not force a migration, era, or gradual
settlement process into `canon/events/` merely to give it a file; event notes are
for bounded incidents.

Rzez-derived canon is initially marked **provisional**. This means it can guide
new work but may still be revised while the setting is young.

### 4. Collection meta-lore: `frame/`

The frame describes the Compendium as an artifact inside its own world: its
formal and unofficial titles, compilation history, editorial layers, source
access, censorship, transmission, and the reader's apparent edition.

Frame material is fictional. Real instructions about files and workflow remain
in `docs/`. Shared facts about planets, laws, and historical events remain in
`canon/` unless their specific relationship to the compilation is being
described.

### 5. Development material: `concepts/`

Concepts contain weapon ideas that have not earned entry status. They are sorted
by lifecycle:

- `proposed/` — an unselected idea or prompt;
- `developing/` — an idea being tested against the taxonomy and setting;
- `rejected/` — a deliberately retained dead end, including why it was rejected.

Rejected concepts are retained because a documented rejection prevents the same
weak idea from repeatedly returning under a new name. Rejection does not make
the concept part of the fictional world.

## Supporting directories

### `templates/`

Templates define expected questions and structure. They are starting points, not
forms that must force every entry into identical prose. Sections may be adapted
when the subject demands it, but metadata keys should stay consistent.

### `schema/`

Schema files define metadata in a machine-readable way. Human explanations live
in `docs/metadata-reference.md`; the schema is the validation contract.

Changing a required field or controlled vocabulary is a schema change. Review
all existing entries when making one.

### `assets/`

Assets include diagrams, maps, illustrations, insignia, and other non-manuscript
files. Group assets beneath the owning entry or shared subject instead of placing
unrelated files at the root.

Recommended form:

```text
assets/
├── entries/a-7-01/
└── shared/
```

### `tools/`

Tools may validate metadata, check links, build indexes, or render publications.
Generated output should not become the source of truth and should be reproducible
from the manuscripts and metadata.

### `docs/`

Documentation describes the real repository process. Fictional documents,
scholarly fragments, and in-world commentary belong inside entries or canon
notes, not here. In-world material specifically about the collection belongs in
`frame/`.

## Filename rules

- Use lowercase kebab-case for new filenames.
- Keep stable entry IDs even if titles change.
- Do not place spaces in active-manuscript filenames.
- Preserve spaces in legacy exemplar filenames when changing them would damage
  provenance.
- Use descriptive entity filenames: `varek-ilyr.md`, not `person-01.md`.
- Avoid dates in filenames unless the document is inherently a dated record.

## Link rules

- Use repository-relative Markdown links.
- Link to a canon note when a reader or author would reasonably need its shared
  definition.
- Do not turn every occurrence of a proper noun into a link.
- Prefer stable file paths; if a file moves, update all inbound links in the same
  change.
- Wiki-link syntax may be used by a local editor, but standard Markdown links
  remain the portable repository convention.

## What is deliberately not present

The repository does not currently require a database, CMS, or generated site.
Those can be derived later. The Markdown manuscripts and canon notes remain the
authoritative inputs even after richer presentation layers are added.
