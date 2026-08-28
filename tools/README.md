# Tools

This directory contains repository-owned utilities such as:

- front-matter validation;
- link and orphan checks;
- entity and alias indexes;
- chronological consistency reports;
- generated tables of contents;
- and publication rendering.

Tools should read authoritative Markdown and metadata rather than becoming a
second place where canon must be edited. Generated output should be reproducible
and clearly separated from source files.

## Current check

Run:

```text
ruby tools/check_repository.rb
```

The check uses only Ruby's standard library. It verifies:

- parseable YAML front matter;
- valid, resolvable `source_concepts` provenance lists;
- required entry fields and controlled values;
- JSON syntax for the metadata schema;
- internal Markdown links;
- recorded exemplar checksums;
- and exact body equality when an entry declares
  `body_relation: exact-copy-after-front-matter`.

It does not judge prose, fictional continuity, or whether a provisional canon
decision should be adopted. Those remain editorial reviews.
