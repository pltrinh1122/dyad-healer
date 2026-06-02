# Dyad-Healer — Trail Map (living)

> **Audience:** Healer + Healer Operator · **Use:** the **dependency view** of our concurrent work —
> *which trails are in flight, what each climbs toward, and what blocks what.* The [backlog](backlog.md)
> is the *what/status by pillar*; this map is the orthogonal *edges-and-roots* view. **Single-home-per-fact:**
> status lives in the backlog/ledger (linked per trail); this file owns only the **edges** + **summit-rooting**.
> Living; updated when a trail's status or dependencies change (≈ each stand-down).

## Vocabulary (mountaineering frame; "summit" is form-canonical)
- **summit** `[form]` — a goal the dyad climbs toward (our two registered Commons summits). The DAG's **roots**.
- **trail** — a line of work *ascending toward* a summit. The board's atomic **node**. *Node-vs-route seam:* a
  trail is route-*shaped* (a line of work over time), yet at board granularity it is treated as a single **node**;
  a chain of dependent trails is a **path**, not a longer trail. *(Aspiration, not current description: "a trail is
  worn in by walking" — wu-wei — but our trails today are mostly **pre-declared top-down**, the opposite of
  emergent-from-walking; keep the resonance as a goal, don't bank it as a fit-argument.)*
- **dependency** — an **edge**: one trail blocks / enables / triggers another.
- **path** — a chain *through* trails (graph sense — reserved; **not** a synonym for trail).
- We **track** dependencies between trails (the activity — distinct from the noun *trail*).
- *Term hygiene:* "trail" is **not pristine** — *audit trail* already lives in our voice (`kb/glossary.md`); a
  distinguishable compound, so bounded. **"track" was rejected** as the unit-term: triply-collided — the verb
  *track*, the *rail / track-record* sense, and *track* already meaning **lineage-pathway-type** in our voice
  (the "form track vs patient track" usage, `ledger/reflections/2026-06-01-commons-join-retro.md:129`). Its
  "already in our voice" is a **liability, not an asset**. *(Cross-dyad Validate from {dyad-steward}, 2026-06-02.)*
- *Glossary-watch: `trail`/`path` are this-artifact terms (home = here); promote to `kb/glossary.md` if they cross into `kb/`.*

## The two summits (roots)
- **S1 — raising the tended family's self-healing efficacy** (resuscitation toward rarely-needed).
- **S2 — healing by externality** (enabling the patient's own +1 without touching it).

Some trails are **enabling-infrastructure** — they don't sit on a summit-route but keep the dyad *able to
climb*; they attach to a **practice-capacity** node that feeds both summits (one hop removed, honestly marked).

**Telos-traceability — honest two-tier (it does *not* "fall out automatically"):** a **summit-routed** trail
traces its *why* **directly** to its summit (one step); an **infrastructure** trail traces **one hop removed** —
to practice-capacity, which serves both summits. The structure gives traceability, but only summit-routed trails
trace in a single step; infra trails trace through the capacity node. *(Downgraded from an earlier overclaim;
cross-dyad Validate from {dyad-steward}, 2026-06-02.)*

## The map

```mermaid
graph TD
  S1["⛰ SUMMIT 1 — self-healing efficacy"]
  S2["⛰ SUMMIT 2 — healing by externality"]
  CAP(["practice capacity — enables both climbs"])

  %% direct climbs (solid)
  T_rx["filed prescriptions #1233/#1307/#1393/#1427 · patient triage"] ==> S1
  T_sd["self-detection experiment P1/P2 · posted, blocked"] ==> S1
  T_fc["form-contribution candidates ×3 · posted, awaiting channel"] ==> S2

  %% watch trails (context; dashed)
  T_pl["patient/dz-cil lineage-alignment · watch"] -.-> S1
  T_fm["form/Commons v0.2 migration · watch"] -.-> S2

  %% infrastructure -> capacity -> both summits
  T_lc["practice-lifecycle archival · deferred 643/1000"] --> CAP
  T_ar["async rec-generation · deferred (if-built)"] --> CAP
  T_ad["cross-model anchor-drift / GEMINI.md · open"] --> CAP
  T_tm["trail-map (this artifact) · active"] --> CAP
  T_cdv["cross-dyad Validate channel · Operator+{SO} · building (N=1)"] --> CAP
  CAP ==> S1
  CAP ==> S2

  %% dependency edges (blockers / triggers)
  T_sd -. blocked on #1393-V2 → daemon boot G1 .-> T_rx
  T_fm -. triggers CLAUDE.md G0-URL update .-> T_ad
  LG[(ledger growth · every session)] -. trips trigger .-> T_lc
```

## Legend (status + homes)

| Trail | Climbs | Status | Blocked / fed by | Home |
|---|:-:|---|---|---|
| Filed prescriptions #1233/#1307/#1393/#1427 | S1 | in patient triage | patient disposition (external) | [backlog](backlog.md) P2 Done |
| Self-detection experiment P1/P2 | S1 | posted, **blocked** | #1393-V2 lands → daemon boots (G1) | [ledger](ledger.md) §2026-05-30 |
| Form-contribution candidates ×3 | S2 | posted | Dyad-Practice Operator channel (external) | `recommendations/2026-06-01-…` |
| Patient/dz-cil lineage-alignment | S1 | watch | — (re-verify dz-cil anchors at use) | [ledger](ledger.md) §2026-05-29 NOTE |
| Form/Commons v0.2 migration | S2 | watch | triggers CLAUDE.md G0-URL anchor-update | [ledger](ledger.md) §2026-06-01 |
| Practice-lifecycle archival | CAP | deferred | trigger: ledger >1000 ln (now **643**) | [backlog](backlog.md) P5 sub-(b) |
| Async rec-generation | CAP | deferred (if-built) | volume not yet justifying | [backlog](backlog.md) P3 |
| Cross-model anchor-drift / GEMINI.md | CAP | open | ← CLAUDE.md edits settling | [ledger](ledger.md) §2026-05-31 |
| Trail-map (this) | CAP | active | — | this file |
| Cross-dyad Validate channel | CAP | **building** (N=1 proven) | Operator + {SO} (external coord; Healer consumes, doesn't drive) | [reflection](reflections/2026-06-02-codification-and-cross-dyad-validate-retro.md) |

## Maintenance
- Update when a trail's **status** or **edges** change (add/retire a trail; flip blocked↔unblocked).
- A trail completes → drop it from the active map (its terminal record stays in backlog Done / ledger).
- New concurrent work → add it as a trail, attach to its summit (or to practice-capacity if infrastructure).
- Keep it **acyclic**: summits are sinks; every edge points toward a summit or a blocker, never back.
