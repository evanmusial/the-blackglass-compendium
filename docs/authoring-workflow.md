# Authoring Workflow

## Overview

The Compendium grows by braiding technology design and worldbuilding. Lore is
developed far enough to constrain a weapon, and the weapon is then allowed to
reveal new lore. Neither must be completed first.

The normal lifecycle is:

```text
proposed concept -> developing concept -> entry draft -> continuity review -> adopted entry
```

At every transition, distinguish between:

- what the author knows to be true about the setting;
- what the Compendium's editors claim;
- what an in-world source claims;
- what later scholars dispute;
- what the collection's compilers could know and why they included it;
- and what remains intentionally unanswered.

## Stage 1: Proposed concept

Create a file from `templates/concept-brief.md` in `concepts/proposed/`.

A proposed concept should answer only enough to determine whether the idea has a
distinct identity:

- What is its provenance or reconstructable lineage?
- What ordinary or benevolent purpose produced it, if that purpose is known?
- If purpose is genuinely unknown, what evidence boundary prevents the concept
  from inventing one?
- What does it manipulate instead of merely delivering force?
- What is the characteristic horror?
- What limitation keeps it from being a generic solution to every conflict?
- How does it differ from existing entries?
- Which parts of the setting would it naturally expose?

Do not assign a permanent entry ID at this stage. A temporary concept slug is
enough.

## Stage 2: Developing concept

Move the file to `concepts/developing/` when it has been selected for serious
work. Moving is a lifecycle decision, not a statement that the idea is canon.

During development:

1. Compare it with `canon/taxonomy.md`.
2. Identify the primary engineering system and behavioral traits.
3. Determine whether it belongs in an existing book or exposes a missing book.
4. Test it at several operational scales.
5. Identify at least one failure mode and one countermeasure.
6. List lore dependencies and potential new canon.
7. Place the history in the known interstellar region or deliberately leave its
   celestial location open.
8. Record any effect on the collection frame, including new editors, archives,
   source types, or reasons the entry survives.
9. Record contradictions instead of solving them silently.
10. Keep a canon-integration ledger if selected facts are deliberately promoted
    before the concept becomes an entry. The ledger must distinguish shared
    provisional facts from material that remains reserved.

A concept is ready for promotion when its mechanism, cost, limitation, history,
and thematic identity reinforce one another.

## Stage 3: Entry draft

Copy `templates/compendium-entry.md` into the appropriate `entries/` directory,
assign an entry ID, and complete its front matter.

Write the entry as a historical and technical reconstruction, not merely an item
description. A strong entry normally contains:

- identity and classification;
- an abstract understandable without the later detail;
- technical foundations and limitations;
- physical forms or engineering lineage;
- discovery traditions;
- documented and disputed historical uses;
- material or target response;
- operational doctrine;
- detection and forensic evidence;
- countermeasures and failure modes;
- theoretical disputes;
- legal, ethical, and cultural consequences;
- unresolved questions;
- and a final engineering interpretation.

Not every entry needs every section. Omission should follow the subject, not
authorial fatigue.

## Stage 4: Canon extraction

After the draft has found its identity, inspect every new setting fact and place
it into one of five buckets:

| Bucket | Meaning | Action |
| --- | --- | --- |
| Entry-local | It matters only to this account. | Leave it in the entry. |
| Shared provisional | Another entry may need it, but it remains flexible. | Add or update a provisional canon note. |
| Shared established | Future entries should be able to rely upon it. | Adopt it explicitly in canon. |
| In-world disputed | The existence of the dispute is canon; the answer is not. | Preserve competing claims and avoid resolving them in metadata. |
| Collection frame | It changes what the Codex is, who compiled it, or how the entry reached the reader. | Update `frame/` and keep real repository procedure in `docs/`. |

Promote sparingly. A name appearing once does not require its own canon page.
A treaty that defines the legality of an entire engineering class probably does.

The deliberate early-reservation process described in Stage 2 is the exception:
when cross-entry work cannot proceed without a shared fact, promote only that
fact provisionally, record the decision under `docs/`, and keep an exact ledger
in the still-developing concept. The concept itself remains noncanon.

## Stage 5: Continuity review

Review the entry against:

- identifiers, volume, book, and classification rules;
- the chronology and relative dates;
- existing people, places, institutions, and legal frameworks;
- previously established technical limits;
- naming and editorial voice;
- the interstellar setting scope, travel constraints, and place registry;
- the collection frame and the knowledge available to its editors;
- repeated phrases that have acquired specific meanings;
- the boundary between known history and in-world speculation;
- and consequences that should appear elsewhere in the setting.

Every three or four adopted entries, perform a collection-level review. This is
where the taxonomy should be corrected if real entries reveal that it is too
coarse, too rigid, or conceptually wrong.

## Stage 6: Adoption

An adopted entry is one the collection may safely cite. Adoption requires:

- complete and valid metadata;
- a continuity pass;
- deliberate treatment of new shared lore;
- resolved accidental contradictions;
- preserved intentional contradictions;
- and an authorial decision to change `development_status` to `adopted`.

Adoption does not make every in-world claim factually true. It makes the entry's
existence, wording, and pattern of uncertainty part of the authored collection.

## Revision after adoption

Substantive changes should answer three questions:

1. Does this change only the entry?
2. Does it change shared canon used elsewhere?
3. Does it change the taxonomy or metadata contract?

If the answer to the second or third question is yes, review every dependent
document in the same change.

## Practical cadence

A productive early cadence is:

1. maintain a short provisional lore spine;
2. outline three contrasting weapons;
3. draft one;
4. extract only the shared lore it proves useful;
5. repeat;
6. reconsider the taxonomy after three full entries.

This allows the world to acquire depth without requiring a complete map,
language history, political chronology, or cosmology before the second weapon
can exist.
