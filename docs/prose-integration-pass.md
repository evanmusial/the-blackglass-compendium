# Prose Integration and Preservation

## Scope

The author requested that most explanatory lists be integrated into connected
prose while preserving the existing lore, weapons, logic, science, and background.
This pass uses commit `fe2bae3ef40352d9b7abc4a0670921192d253938` as its complete
pre-edit source. It covers the four active entries, both developing manuscripts,
all non-index canon notes, and all non-index collection-frame notes: 48 source
files in total.

The substantive information in each original list has a recorded destination.
Where a passage combined lore with author-only planning, its lore remains in the
main text and the original planning material survives in a linked companion.
The source commit preserves the exact earlier corpus; the audit records explain
how its information is represented in the revised one.

## Reading changes

Explanatory inventories now develop their subjects through connected paragraphs.
Definitions lead into relationships, mechanisms into limits, and events into
their evidentiary or civic consequences. Existing sections absorb the revised
material rather than accumulating a separate appendix of prose versions of the
same lists. Qualifications, examples, named stages, scientific conditions,
negative findings, competing interpretations, and exceptions travel with their
claims.

The Closed Night established the initial style reference. Its naming traditions
now connect professions to their experiences of the technology, and its technical
account develops the relation between an element, a surface, an enclosure, and
the supporting instrument. The same approach extends through the other weapons
and the background. It does not turn the collection into omniscient narrative or
invent a recovered source to disguise an ordinary outline.

The original 1,794 Markdown list items in the 48 source files are reduced to
127, approximately 93 percent fewer. This measures removal from the main source
files: some items became prose, while authoring lists were relocated intact.
Index navigation, metadata, repository instructions, and the preserved exemplar
are outside that count.

| Source group | Original list items | Remaining list items |
| --- | ---: | ---: |
| Four active weapon entries | 381 | 59 |
| Two developing manuscripts | 340 | 14 |
| Shared canon | 967 | 47 |
| Collection frame | 106 | 7 |
| **Total** | **1,794** | **127** |

Retained lists have a stated purpose. They include evidence-grade keys,
separately actionable treaty prohibitions, the gray-release rescue sequence,
the three-witness protocol, Ligature crossing stages, Manifold proof criteria
and Common Outside duties, the Apsis claim ledger and conditional sequence, and
the Blackglass mark legend. Their form supports order, scope, or exact reference.
Useful comparison and chronology tables remain; the developing concepts' scale
and mechanism comparisons that read better as prose have been integrated there.

## Authorial companions

The [editorial-note index](editorial-notes/README.md) leads to the preserved
companions. These contain original development questions, classification rules,
canon-promotion ledgers, research sources, and writing guidance. Relocation
changes their reading context, not their authority. Relative links are rebased
to their new paths.

In-world uncertainty remains visible in the main prose. An unresolved operator,
an alleged artifact, a conditional outcome, and an authorially unassigned
location are not interchangeable. The Unhidden and Manifold retain their
developing/reserved statuses, their precise shared-canon boundaries, and their
unadopted proposals. The Rzez remains draft/provisional; the three later entries
remain adopted/established.

The preserved Rzez exemplar remains byte-identical. Its active working copy now
rephrases some inherited list exposition, so the earlier statement that every
exemplar line appears literally and in order in the active file describes the
pre-prose revision. The current preservation claim concerns substantive content,
with the original wording still available in the exemplar and source commit.

## Preservation evidence

The [machine-readable ledger](prose-preservation/manifest.json) identifies the
baseline, every reviewed source, its before/after fingerprints and item counts,
companions, and the detailed audit files. Those files record original list
content and its destination, retained-list reasons, and the exact root and
entry replacement mappings. They are historical editorial evidence rather than
additional active lore.

Each rewritten item was read against its destination. Independent reviews
checked the weapon transformations and the shared physical, economic,
chronological, and taxonomic rewrites. Those reviews restored small but
substantive distinctions such as possible rather than inevitable outcomes,
alternative rather than cumulative mechanisms, the scope of typical settlement
criteria, and unpredictable rather than merely uncontrollable Manifold behavior.

Structural checks verify repository links, entity and concept references,
metadata, the original exemplar checksum, and whitespace. Additional comparisons
check unchanged front matter, preservation of quotations and substantive numeric
tokens in the source-plus-companion corpus, exact retained or relocated lists,
and reconstruction of edits from their recorded replacements. Word counts and
token comparisons are aids to review, not substitutes for comparing meaning.

## Continuing editorial practice

Future revisions should record a destination for every substantive item before
removing its old presentation. A list may remain when its arrangement conveys
essential meaning or belongs to a supported document. Ordinary explanation
should be developed in prose where the reader encounters its cause, evidence,
limit, or consequence. Author-only instructions remain in companions, and
polished wording must never silently promote uncertain lore or remove a
restriction merely because the resulting sentence sounds smoother.
