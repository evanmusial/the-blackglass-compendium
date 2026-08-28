# Metadata Schema

`entry.schema.json` is a JSON Schema representation of the YAML front matter
required by full Compendium entries.

JSON Schema can validate YAML after a parser converts it to the equivalent data
model. The repository does not yet require one particular validator. The human
reference is [`../docs/metadata-reference.md`](../docs/metadata-reference.md).

When changing the schema:

1. update its version if compatibility changes;
2. update the metadata reference;
3. validate every active entry;
4. update the entry template;
5. explain why real manuscripts needed the change.
