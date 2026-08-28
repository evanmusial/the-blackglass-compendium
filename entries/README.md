# Entries

This directory is the active Compendium manuscript.

## Organization

Entries are filed by volume and book:

```text
entries/volume-NN/book-NN/entry-id-slug.md
```

The current working entry is:

- [`volume-01/book-07/a-7-01-the-rzez.md`](volume-01/book-07/a-7-01-the-rzez.md)

## Entry rules

- Keep one complete entry in one Markdown file.
- Begin each file with metadata conforming to
  [`../schema/entry.schema.json`](../schema/entry.schema.json).
- Preserve its stable `id` even if its title or classification wording changes.
- Record a source exemplar and checksum when the entry began as a migration.
- Treat `development_status: adopted` as an intentional editorial decision.
- Update shared canon when the entry makes a reusable setting commitment.
- Do not edit an exemplar when revising its working entry.

See [`../docs/authoring-workflow.md`](../docs/authoring-workflow.md) for the full
lifecycle.
