# The Blackglass Compendium

A complete history of forbidden technologies.

The repository is the durable manuscript and canon workspace for **The Codex of
Arcane Engineering**. It keeps finished prose readable as ordinary Markdown
while adding enough structure to support continuity checks, indexes, timelines,
cross-references, and an eventual generated publication.

## Where things belong

| Directory | Purpose |
| --- | --- |
| [`exemplars/`](exemplars/) | Preserved reference manuscripts. These are not active editing copies. |
| [`entries/`](entries/) | Working and adopted Compendium entries, organized by volume and book. |
| [`canon/`](canon/) | Shared facts, classifications, chronology, terminology, people, places, and institutions. |
| [`frame/`](frame/) | Meta-lore about the collection: its names, compilers, editions, sources, and editorial voice. |
| [`concepts/`](concepts/) | Proposed, developing, or rejected weapon ideas before they become entries. |
| [`templates/`](templates/) | Starting documents for concepts and full entries. |
| [`schema/`](schema/) | Machine-readable definitions for entry metadata. |
| [`docs/`](docs/) | Detailed repository, metadata, canon, and authoring instructions. |
| [`assets/`](assets/) | Images, diagrams, maps, and other non-manuscript material. |
| [`tools/`](tools/) | Future validation, indexing, and publication utilities. |

## Current entry

The original Rzez manuscript remains preserved at
[`exemplars/Volume 1 - The Rzez.md`](exemplars/Volume%201%20-%20The%20Rzez.md).
Its active, metadata-bearing working copy is
[`entries/volume-01/book-07/a-7-01-the-rzez.md`](entries/volume-01/book-07/a-7-01-the-rzez.md).

The working copy currently preserves the exemplar body exactly and adds only a
YAML metadata header. Shared Rzez material has begun to be extracted into the
provisional canon without silently turning every legend or scholarly theory
into objective setting truth. See the
[`Rzez integration record`](docs/rzez-integration.md).

## Authoring model

The Compendium uses a hybrid model:

1. **Markdown contains the prose.** One complete entry remains one readable
   manuscript file.
2. **YAML front matter contains the filing data.** IDs, hierarchy,
   classifications, aliases, scales, and entity references can be indexed
   without scraping prose.
3. **Canon notes contain reusable setting commitments.** Entry-specific color
   stays in the entry until another document needs to rely on it.
4. **Concept files contain uncertainty.** An attractive idea does not become
   canon merely because it was written down. If a few cross-entry facts are
   deliberately reserved early, the concept and integration record must name
   exactly what was promoted.
5. **The exemplar is provenance, not the editing surface.** It makes it possible
   to compare later revisions with the source that established the voice.
6. **The frame explains the book inside the world.** It records what the Codex
   is, why it exists, and what kind of edition the reader appears to possess.

## Current setting scope

The Compendium is provisionally set across a small, connected interstellar
region rather than historical Earth, one crowded solar system, or an entire
galaxy. Human civilization occupies roughly eight to twelve known systems;
Earth is not part of the confirmed record; and interstellar travel is possible
through limited routes whose exact mechanism remains undesigned.

Kharos is the setting's designated home world and recurring civic, academic, and
legal anchor. It belongs to the first system-level circumbinary model, the
[Kelan–Ruva system](canon/places/kelan-ruva-system.md). Valec and Issa provide the
first contrasting celestial anchors. The remaining locations in the Rzez stay
unassigned until later entries need to place them. See
[`canon/setting-scope.md`](canon/setting-scope.md) for the complete provisional
decision and the rules future designs must follow.

## Current weapon landscape

The collection now has three deliberately non-equivalent systems:

- **The Rzez** is human entropic engineering that invalidates the relationships
  by which matter remains whole.
- **The Unhidden** is human morphogenic engineering descended from regenerative
  medicine; its autonomous open forms are finite, conscious bodies wholly
  present in ordinary space.
- **The Manifold** is an extrinsic causal-topological complex of unknown purpose
  whose rare ruptures leave local observations exact and global reality
  irreconcilable. Human interference is indirect, unreliable, and prone to
  unintended consequences.

Kharos, Avara, and Odran respond through different laws, institutions, and
infrastructure without implying that the weapons share one physics. See the
[`three-system engineering landscape`](canon/engineering-landscape.md).

## Start here

- Read [`docs/repository-structure.md`](docs/repository-structure.md) before
  adding or moving files.
- Read [`docs/authoring-workflow.md`](docs/authoring-workflow.md) before drafting
  a new instrument.
- Use [`templates/concept-brief.md`](templates/concept-brief.md) for a new idea.
- Use [`templates/compendium-entry.md`](templates/compendium-entry.md) when an
  idea is promoted to a full entry.
- Consult [`canon/taxonomy.md`](canon/taxonomy.md) before assigning an ID,
  volume, book, system, or classification.
- Consult [`canon/setting-scope.md`](canon/setting-scope.md) before creating or
  placing a new world, system, route, polity, or nonhuman civilization.
- Consult [`frame/`](frame/) before naming the collection's compilers, changing
  its editorial voice, or explaining how an entry reached the reader.
- Consult [`docs/metadata-reference.md`](docs/metadata-reference.md) when editing
  front matter.
- Run `ruby tools/check_repository.rb` after structural or metadata changes.

## Canon in one sentence

An in-world source can be highly credible without making its interpretation
authorially final, and a disputed in-world story can be authorially canonical
as a story that people in the setting genuinely tell.
