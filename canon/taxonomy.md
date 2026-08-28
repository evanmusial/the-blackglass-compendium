---
document_type: taxonomy
title: Compendium Taxonomy
authorial_status: provisional
source_entries:
  - A-7.01
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

## Engineering-system axis

The primary system answers: **what governing mode of engineering produces the
effect?**

The only current controlled value is:

- `entropic` — engineering that biases a target toward loss of organized or
  persistent structure rather than overcoming it through ordinary force.

This definition is derived from one entry and is provisional. Add systems only
when a developed concept demonstrates them.

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

## Origin axis

The origin classification asks what legitimate need first shaped the technology.
For the Rzez, the answer is `precision-mineral-separation-apparatus`.

Future values should remain specific enough to create history. “Industrial” is
usually too broad by itself; “precision mineral separation” explains inventors,
users, geometry, accident patterns, and the path toward weaponization.

## Military-consequence axis

Military classification records threat, doctrine, or prohibited consequence. It
does not define mechanism.

The Rzez is `proscribed-world-terminal-technology`: verified in the manuscript as capable
of ending a world's ability to persist as a world, and prohibited accordingly.

Future entries may require other terms. Do not assume that every forbidden
technology is world-terminal or that destructive magnitude is the only form of
strategic danger.

## Operational-scale axis

Current scales are:

| Scale | Rzez interpretation |
| --- | --- |
| `surgical` | Fractions-of-a-second separation of selected biological structures. |
| `industrial` | Quarrying, demolition, recycling, extraction, or fabrication. |
| `siege` | Failure of a fortress, gate, foundation, or bounded defensive work. |
| `strategic` | Infrastructure-mediated failure of a city or region. |
| `continental` | Failure propagated across geological or civilizational regions. |
| `planetary` | A world becomes the transmission medium and terminal target. |

Scales describe distinct engineering approaches, not merely output levels.

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

The taxonomy is expected to change while the collection is young. When it does:

1. state which real entries forced the change;
2. update metadata documentation and schema together;
3. review all affected entries;
4. preserve stable entry IDs unless there is a compelling reason not to;
5. document unresolved questions rather than filling the hierarchy with invented
   placeholders.
