# Entries

This directory is the active Compendium manuscript.

## Organization

Entries are filed by volume and book:

```text
entries/volume-NN/book-NN/entry-id-slug.md
```

The current manuscripts are:

- [`volume-01/book-07/a-7-01-the-rzez.md`](volume-01/book-07/a-7-01-the-rzez.md)
  — working draft;
- [`volume-02/book-04/b-4-01-the-closed-night.md`](volume-02/book-04/b-4-01-the-closed-night.md)
  — adopted;
- [`volume-03/book-06/c-6-01-the-agreement.md`](volume-03/book-06/c-6-01-the-agreement.md)
  — adopted;
- [`volume-04/book-01/d-1-01-the-rehearsal.md`](volume-04/book-01/d-1-01-the-rehearsal.md)
  — adopted.

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
