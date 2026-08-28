---
document_type: taxonomy
title: Compendium Taxonomy
authorial_status: provisional
source_entries:
  - A-7.01
source_concepts:
  - the-unhidden
  - the-manifold
decision_basis:
  - three-weapon-integration
---

# Compendium Taxonomy

## Why the taxonomy has several axes

One label cannot adequately describe where an entry is published, how its
technology works, what form it takes, why it was created, how dangerous it is,
and how well its history is supported. Those questions belong to separate axes.

The Rzez is therefore filed simultaneously as:

- Volume I, *Entropic Systems*;
- Book Seven, *Instruments of Separation*;
- Entry `A-7.01`;
- a technology family;
- entropic, propagative, and structure-selective engineering;
- an originally industrial mineral-separation technology;
- a proscribed world-terminal military technology;
- and a system operating at surgical through planetary scales.

None of these labels should be made to substitute for the others.

The next two developing subjects make the separation more important. The
Unhidden has a known human medical lineage but creates conscious military
organisms. The Manifold has no known original purpose or local engineering
lineage but produces consequences humans describe militarily. Provenance,
purpose, mechanism, form, and consequence must therefore remain separate fields.

## Publication hierarchy

### Codex

The full work is **The Codex of Arcane Engineering**. The relationship between
that formal in-world corpus and **The Blackglass Compendium** is defined
provisionally in [`../frame/collection-identity.md`](../frame/collection-identity.md):
Blackglass names the later, reconstructed, and possibly unauthorized recension
represented by this project.

### Volume

The Rzez establishes `Volume I: Entropic Systems`. The provisional rule is that
a volume groups entries by the primary domain or governing mode of engineering.

`Morphogenic` and `causal-topological` are now provisional system values because
The Unhidden and The Manifold require them. Neither has an assigned volume
number. Do not infer that the order in which systems are developed determines
their eventual publication order.

This rule must be tested against future entries. Do not create a full list of
volumes until actual technologies require them.

### Book

The Rzez establishes `Book Seven: Instruments of Separation`. The provisional
rule is that a book groups related mechanisms or instrument purposes within a
volume.

“Book Seven” implies at least six other books in Volume I, but their subjects are
not yet defined. The numbering is a useful negative space, not an instruction to
invent six placeholders immediately.

### Entry

An entry is the primary unit of manuscript, citation, and publication. Entry
`A-7.01` covers the Rzez family.

The semantic meaning of prefix `A` is unresolved. It may represent an archive,
series, classification family, compiler, or something else. Preserve it without
generalizing from it.

## Entry-scope axis

Use one of these scopes:

| Scope | Use when |
| --- | --- |
| `single-instrument` | The subject is one unique artifact with an individual history. |
| `device-type` | The subject is a repeatable device design with bounded variants. |
| `technology-family` | One principle produces fields, devices, variants, events, or doctrines best understood together. |
| `event` | The subject is a deployment or phenomenon rather than a reconstructable instrument. |
| `theoretical-system` | The subject is a coherent field of engineering without a verified device. |

The Rzez is a `technology-family`. Its entry explicitly distinguishes the Rzez
principle, a Rzez field, a Rzez instrument, a Rzez event, and the legendary total
technology called the Rzez.

### Reserved scope candidate

`phenomenon-complex` would describe a recurring ensemble of signatures,
manifestations, artifacts, presences, and events that must be reconstructed
together even though its unity, number, or status as an engineered device
remains unresolved.

The Manifold is the first candidate `phenomenon-complex`. The classification
prevents the entry from falsely deciding whether shards, ruptures, associated
presences, and apparent deployments are one instrument, many instruments, one
event crossing several epochs, or a natural process. It is **not currently a
valid entry-metadata value**. The value should enter the metadata reference,
schema, checker, and entry template together when a Manifold draft actually uses
it.

## Engineering-system axis

The primary system answers: **what governing mode of engineering produces the
effect?**

The current entry-metadata value demonstrated by a manuscript is:

- `entropic` — engineering that biases a target toward loss of organized or
  persistent structure rather than overcoming it through ordinary force.

Shared prose reservations for the developing concepts are:

- `morphogenic` — engineering that controls how living matter assigns form,
  function, and organismal continuity through development and repair.
- `causal-topological` — engineering, or an analytically classified phenomenon,
  that changes whether locally coherent spatial adjacencies and causal sequences
  can compose one global geometry and history.

`Morphogenic` and `causal-topological` guide shared lore but are not yet part of
the entry metadata contract. `Causal-topological` is a human classification of
observed behavior. It does not claim that The Manifold is understood,
manufactured, or intentionally a technology. Add further reservations only when
a developed concept demonstrates them, and promote them into metadata only when
an entry draft uses them.

## Behavioral-trait axis

Traits describe how a system acts and may cross volumes or books.

Current Rzez-derived traits:

- `propagative` — the effect can extend through a target or connected system;
- `structure-selective` — characterization can prefer particular continuities,
  materials, interfaces, or load paths;
- `delayed` — visible failure can occur long after establishment;
- `self-cascading` — redistribution can continue destruction after the initiating
  field or emitter is gone;
- `residual` — affected targets may transmit instability to repairs or attached
  material.

The entry metadata records the two traits explicitly used in its own engineering
class line. The remaining traits are available for thematic and analytical
indexes without retroactively rewriting that line.

Unhidden-derived traits:

- `boundary-exposed` — essential physiology is accessible through channels
  continuous with the surrounding environment;
- `function-distributed` — vital roles recur throughout the body rather than
  belonging to discrete organs;
- `self-remapping` — surviving tissue can change physiological role after
  damage;
- `regenerative` — living structure can be rebuilt given sufficient time,
  matter, and nursery support;
- `environment-coupled` — operation depends unusually strongly on direct
  exchange with the surrounding medium.

Manifold-derived traits:

- `configuration-exploratory` — establishment samples an unbounded family of
  possible configurations without producing a human-readable survey of them;
- `topology-disjunctive` — locally valid adjacencies fail to compose one global
  spatial chart;
- `causally-disjunctive` — locally valid event sequences fail to compose one
  global chronology.

Do not turn `extrinsic`, `unknown`, `uncontrolled`, `world-terminal`, or
`epoch-denial` into engineering traits. They describe provenance, knowledge,
control, or consequence.

## Original-purpose axis

The metadata field remains `origin_classification` for compatibility. It asks
what supported prior function or design pressure first shaped the subject. For
the Rzez, the answer is `precision-mineral-separation-apparatus`. For The
Unhidden, the working answer is
`vascularization-independent-regenerative-scaffold`.

Future values should remain specific enough to create history. “Industrial” is
usually too broad by itself; “precision mineral separation” explains inventors,
users, geometry, accident patterns, and the path toward weaponization.

Original purpose may be genuinely unknown. Absence is more accurate than an
`unknown` value when no evidence supports a prior function. The Manifold's
suspected military use must not be backfilled as its origin classification.

## Provenance axis

Provenance asks where the reconstructable technology or phenomenon comes from,
not what it was for and not how a repository manuscript was sourced.

Current provisional values are:

- `known-human-lineage` — the reconstructable lineage is human, without ruling
  out unknown earlier analogues;
- `extrinsic-unknown` — the subject lies outside every known human or regional
  lineage and apparently outside ordinary local spacetime, while creator,
  operator, home, and purpose remain unresolved.

The Rzez and The Unhidden use `known-human-lineage`. The Manifold uses
`extrinsic-unknown`. Add a dedicated entry-metadata field only when a draft first
needs to encode the distinction; do not overload the existing repository
`source` object, which records manuscript provenance.

## Military-consequence axis

Military classification records threat, doctrine, or prohibited consequence. It
does not define mechanism.

The Rzez is `proscribed-world-terminal-technology`: verified in the manuscript as capable
of ending a world's ability to persist as a world, and prohibited accordingly.

The Unhidden's working military classification is
`open-form-combat-organism`. The Manifold's is
`suspected-epoch-denial-technology`. The latter describes a strategic reading of
rare effects, not demonstrated doctrine, aim, ownership, or original purpose.

Future entries may require other terms. Do not assume that every forbidden
technology is world-terminal or that destructive magnitude is the only form of
strategic danger.

## Operational-scale axis

Current entry-demonstrated scales are:

| Scale | Interpretation |
| --- | --- |
| `surgical` | Precisely bounded action upon tissue or a comparably small target. |
| `industrial` | Quarrying, demolition, recycling, extraction, fabrication, or sustained production. |
| `siege` | Action against a fortress, gate, foundation, habitat, or bounded defensive work. |
| `strategic` | Infrastructure-mediated consequence for a city, region, route, or campaign. |
| `continental` | Consequence propagated across geological or civilizational regions. |
| `planetary` | A world or its ability to persist becomes the terminal target. |

The developing concepts reserve three additional prose values:

| Reserved scale | Interpretation |
| --- | --- |
| `clinical` | Patient-coupled physiological support with care infrastructure and continuous monitoring. |
| `tactical` | Deployable architecture acting within an encounter, vessel, or facility. |
| `local` | One room, corridor, vessel section, facility, or comparably bounded site. |

These reservations do not extend the entry metadata vocabulary until a draft
uses them. Scales describe distinct engineering approaches, not merely output
levels.

The Rzez retains surgical through planetary architectures. The Unhidden
currently demonstrates clinical, surgical, tactical, and siege forms. The
Manifold most strongly demonstrates local, siege, and strategic consequences;
planetary reach remains an exceptional threat model rather than routine use.

### Temporal reach

The Manifold shows that spatial scale and temporal reach cannot be one axis.
Working prose may distinguish `incident-bounded`, `persistent`, and `epochal`
reach. Do not add a metadata field until a full entry proves that these values
support classification rather than merely describing incidents.

## Legal-status axis

Legal status should name the authority and operative constraint when known. A
generic `illegal` tag is insufficient.

For the Rzez, manufacture, possession, simulation, reconstruction, and instruction
are prohibited under the Sixth Compact of Kharos, subject to tightly controlled
industrial thresholds described in the prose.

## Evidence axis

The Rzez establishes Grades A through E. Grades attach to claims or incidents,
not automatically to whole entries. An entry can contain Grade A physical
history and Grade E myth in the same reconstruction.

Do not store one overall evidence grade in entry metadata unless a later document
type genuinely requires it.

**Concordance is not a sixth grade.** A concordance bundle contains independently
authenticated, internally coherent records whose histories cannot all occupy one
causal chronology. Grade the custody, authenticity, and claims of each record in
the normal way, then record incompatibility separately. The evidence model can
strongly support the existence of contradictory histories without choosing one
as metaphysically real.

## When a variant becomes another entry

Keep a variant inside an existing entry when it shares:

- the governing principle;
- the central characterization and failure model;
- the same historical lineage;
- and consequences best understood as scale or form changes.

Promote a variant to a separate entry when it has at least two of the following:

- a materially different mechanism;
- independent discovery or engineering lineage;
- different countermeasures or failure modes;
- a distinct cultural identity or legal regime;
- enough historical consequence to require its own reconstruction;
- or a taxonomy placement that would otherwise be misleading.

This rule keeps the Rzez hand instrument, quarry frame, siege anchor, strategic
lattice, and planetary array together while leaving room for a true derivative
technology to separate later.

## Taxonomy change policy

The taxonomy is expected to change while the collection is young. An explicitly
integrated developing concept may reserve a prose value before an entry exists,
provided the concept and integration record preserve that status. Such a
reservation does not alter the entry metadata contract.

When a change affects entries or metadata:

1. state which real entry or deliberate concept-integration decision forced the
   change;
2. update metadata documentation and schema together;
3. review all affected entries;
4. preserve stable entry IDs unless there is a compelling reason not to;
5. document unresolved questions rather than filling the hierarchy with invented
   placeholders.
