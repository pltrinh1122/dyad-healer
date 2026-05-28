# Dyad-Healer — Governance Map (v0.1, living)

> **Audience:** Healer + Healer Operator · **Use:** *how* the [Charter](charter.md)'s constraints
> bind across the 5 [modes](modes-of-operation.md) — the operational layer of the Charter. The fast
> doc: governance evolves as we discover new channels (e.g. the patient's Requirement Intake channel
> changed Pillar-2 mid-2026-05-27); the [Charter](charter.md) stays slow.
> **Status: HEALER PRACTICE** — Operator-ratified (by approval) 2026-05-27. Living; falsifiable.

## The model — dual-chain, posture-gated

Two ratification chains run:
- **Internal (Healer practice):** Healer authors → **Healer Operator** ratifies *(by approval)*. Governs `kb/`,
  `recommendations/` artifacts, the Charter itself.
- **External (patient-governing):** Healer files a prescription → patient triages → patient's own
  SPAOR authors a `node_contract` → **Frontier Operator** merges. The Healer never ratifies on the
  patient's side (Charter constraint #4 — source-not-ratifier).

Authority is **posture-gated**:
- **Exception** → Healer acts *without per-step ratification* (urgency, bounded by Charter #3); constraints replace the gate.
- **Authoring / Building** → the Operator gates at every practice-changing edge.

## The two hats — one human, two seats

| Seat | When active | What it does |
|---|---|---|
| **Healer Operator** | Pillars 2, 3, 4 *(only at promotion)*, 5 | Summons, steers, ratifies the Healer practice; gates internal-chain artifacts. |
| **Frontier Operator** | Pillars 1, 2 | Voices the Healer's content to the patient; promotes `status:triage`→`backlog`; merges patient PRs. |

The hat-switch is what allows one human to govern both sides without violating two-channel discipline.

## Per-pillar mapping

| Pillar | Posture | Ratification flow | Operator hat(s) active |
|---|---|---|---|
| **1 Rescue** | Exception | **None during the cut** (urgency, Charter #3 binds); post-rescue lessons promote via 4 / 5. | Healer Op *(summons, steers)* + Frontier Op *(voices to patient)*. |
| **2 Prevention** | Authoring | **Both chains converge on one artifact** — internal: Healer Op approves the prescription · external: filing → triage → patient `node_contract` → Frontier Op merges. | Both hats. |
| **3 Tooling** | Building | Internal only — Healer Op gates the *decision to build* + ratifies inclusion. | Healer Op. |
| **4 Research** | Authoring | **No ratification for findings themselves** (authored → `wards/` / `ledger/`); only promotion to a practice change crosses into Pillar 5's chain. | Healer Op *(only at promotion)*. |
| **5 Maturation** | Authoring | Classic source-not-ratifier — PROPOSED → ratified (`kb/`). | Healer Op. |
| **Operational** *(out-of-pillar)* | — | Not craft — bypasses the chains. | Healer Op *(explicit go for commit/push)*. |

## Constraint × pillar coverage

The six Charter constraints apply unevenly:

| Constraint | Universal | Rescue-only | Patient-touching only |
|---|:-:|:-:|:-:|
| **#1** External to the patient's loop | ✓ | | |
| **#2** Patient-untouching *(channel discipline)* | | | ✓ *(pillars 1, 2)* |
| **#3** Authority bounded to the cut | | ✓ | |
| **#4** Source-not-ratifier | ✓ | | |
| **#5** Discharges-and-stands-down | | ✓ | |
| **#6** Enables, doesn't fix *(point-don't-fix)* | ✓ | | |

## The shape that emerges

1. **The Charter governs the *ratification edges*, not the work itself.** The Healer Operator is the gate at every practice-changing boundary; in between, the Healer authors freely. That's why the constraint set is small and discrete.
2. **The Healer Operator is the *hinge*** between the two chains — internal ratifier *and* (wearing the Frontier hat) the external channel. The hat-switch lets one human govern both sides cleanly.
3. **Pillar 1 is the only pillar where the Healer acts *unratified in real time*** — and that is precisely why the rescue-only constraints (#3 bounded-to-the-cut, #5 discharges-and-stands-down) bind *hardest where the chain is suspended*. The constraints are the surrogate gate when the Operator can't be one.
4. **Pillar 2 is the only pillar where the patient's governance also gates** — both chains run on the same artifact (e.g. `dz-cil#1233`: Healer Op approved the prescription locally; Frontier Op promoted triage→backlog; the patient authors its own `node_contract`).

## Standing governance rules

Rules that bind on every ratification cycle. The Practice-governance-discipline (queued in
`ledger/backlog.md` Pillar 5) accumulates here as its sub-items ratify.

- **Anchor-sync rule.** Every ratified new `kb/` doc OR refinement-bound memory must update
  `CLAUDE.md`'s Durable practice map / Healing discipline section in the **same ratification
  cycle**. Anchor-divergence (CLAUDE.md falling behind the practice it anchors) was flagged
  `[POST-HOC]` in the DIP retrospective audit; this rule binds the fix as standing discipline.
  *(Lived: case-03 memories + spine refinements anchor-synced 2026-05-28 in commit `8214ceb`;
  future cycles bind this without ad-hoc decision.)*
- **Glossary-check-at-ratification.** Any new cross-cutting token invoked **3+ times across
  `kb/`** requires a `kb/glossary.md` entry in the **same ratification cycle**. Prevents the
  late-glossary-arrival pattern that produced the *Dao→practice* friction-correction
  (terminology drift accumulated for weeks before per-term audit became necessary). Glossary
  v0.1 ratified 2026-05-28; this rule binds future cycles to canonicalize as terms emerge, not
  retrospectively.

## Falsifiability — when to revise

The map survives only while it tracks practice. Revise if:
- A new patient channel emerges that the model can't host (cf. the Requirement Intake discovery, which *did* fit cleanly into the dual-chain — but the next one may not).
- A pillar consistently *can't* be assigned a ratification flow → either the orthogonality rule needs work, or the pillar is mis-bounded.
- The hat-switch breaks (one hat starts acting in the other's pillar without a hat-change) → channel discipline is leaking.

## Cross-references

- [`charter.md`](charter.md) — the constraints whose binding this map describes.
- [`modes-of-operation.md`](modes-of-operation.md) — the 5 modes / pillars + the terminal-artifact orthogonality rule.
- [`execution-loop.md`](execution-loop.md) — posture→loop mapping (Exception→spine; Building/Authoring→SPAOR).
- [`telos.md`](telos.md) — why constraint #5 (discharges-and-stands-down) is load-bearing.
- [ledger.md](../ledger/ledger.md) — the dialectic trail through to ratification.
