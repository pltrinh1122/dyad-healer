# Audit Report: 0001-dyad-healer-instantiation-retrospective

**Date:** 2026-05-28
**Audit Type:** Retrospective Dyad-Instantiation Audit (DIP v0 — evidence input)
**Status:** MIXED — 1 PASS · 13 POST-HOC · 0 FAIL
**Subject:** the Dyad-Healer's own instantiation (2026-05 onward)
**Audit-template lineage:** modeled on `HOW-0002-bootstrap-audit-template.md` (agent-antigravity) +
its applied instance `artifacts/audit/0001-bootstrap-v2-compliance.md`. Dyad-adapted from the
predecessor's 4-pillar/persona+memory/governance lens.

---

## Executive Summary

This audit retrospectively grades the Dyad-Healer's instantiation against a dyad-adapted version
of the agent-antigravity bootstrap-audit template. The grading is **falsifiable** by design:
each item is marked **`[PASS]`** (in place from instantiation), **`[POST-HOC]`** (structure
materialized but only after substantial operation), or **`[FAIL]`** (absent today).

**Primary finding:** **13 of 14 items are `[POST-HOC]`.** Operations against live patients (cases 1
and 2) preceded almost every structural element by days or weeks. The first commit of this repo
(`e066f3c`, 2026-05-27) is itself a **post-hoc codification** of a practice already underway —
the case-01 healing arc was lived before the durable record existed to hold it.

The `[POST-HOC]` count is the falsifiable measure of how much was *winged*. The audit's purpose
is **not** to call this a failure — discovery-by-doing is the wu-wei learning loop. The purpose
is to identify which items DIP should encode as **up-front discipline** so that a future dyad's
instantiation has them in place from t=0, not after the first incident.

A new audit-mark category — **`[POST-HOC]`** — is the methodological contribution this audit
makes back to the template. The predecessor template has only PASS/FAIL; for retrospective
instantiation audits a third category is necessary, because "absent at the time it should have
been there, present now" is the most common honest verdict and is informationally distinct from
both PASS and FAIL.

---

## Verification Checklist

### 1. Identity & Form-grounding
*(Dyad analog of the predecessor's "Persona & Memory Invariants" — declares what the dyad IS
before declaring what it DOES.)*

- `[POST-HOC]` **Identity declaration** (`README.md`) — committed `a309594` on **2026-05-27**,
  *after* cases 1 and 2 were already healing arcs in flight. The dyad operated against live
  patients before declaring its own identity to itself.
- `[POST-HOC]` **Parent-form citation** (`the-dyad-practice` README) — present in current `README.md`
  + `CLAUDE.md`, but the form itself was authored and published in parallel with our operation,
  not before it. The form-grounding move (citing the form to resolve dialectic) only emerged as
  load-bearing in the 2026-05-28 reflection — months *into* practice.
- `[POST-HOC]` **Role-name for agent-half** (`Healer`) — in active use from case-01 onward, but
  formally declared as the role-name in `README.md` + ratified-charter only on 2026-05-27. Self-
  identity as "Dyad-Healer" (dyad-level) was ratified even later (mid-2026-05-28).
- `[POST-HOC]` **Operator-hat naming with channel discipline** (Healer Operator vs Frontier
  Operator) — codified mid-stream after a case-02 channel-conflation incident exposed the gap.
  Ledger Decisions line: "Two-Operator channel discipline (codified → spine cross-cutting)…
  *from Operator's conflation-confusion catch*." This was discovered through near-miss, not
  declared up front.

### 2. Substrate scaffolding
*(Dyad analog of the predecessor's "Agentic Architecture Scaffolding" / 4 pillars — the durable
record's physical layout.)*

- `[PASS]` **Durable-record root** (`/mnt/shared_data/dzw/dz-healer/`) — established off-`/tmp`,
  external to the tended patient, from the first commit. This is the **only `[PASS]`** in the
  audit. It is also the structural decision the predecessor template most strongly emphasized
  (ISBO Phase 2: "Sovereign Domain"), and the one we got right.
- `[POST-HOC]` **Bucket convention** (4 buckets: `wards/` · `ledger/` · `kb/` · `recommendations/`)
  — the first three emerged organically from need; **`recommendations/`** as the 4th bucket was
  only ratified on **2026-05-27** (ledger Decisions). The convention was retrofitted to existing
  artifacts, not pre-declared.
- `[POST-HOC]` **External-to-tended-target boundary** — practiced from the start (the directory
  was always external), but codified as a Charter constraint (#1 external · #2 patient-untouching)
  only on **2026-05-27** in `kb/charter.md`. Practice predates principle by weeks.

### 3. Governance
*(Dyad analog of the predecessor's "Flow-State Governance" — the ratification chain that makes
the practice's own evolution legible.)*

- `[POST-HOC]` **Charter + Governance-Map ratified** — codified **2026-05-27** (`46126c6`) in two
  cross-referenced kb docs after a three-pass falsification cycle. Identity-as-ontology
  formalized roughly one month into operation.
- `[POST-HOC]` **Ratification chain named** (Healer proposes → Operator ratifies; Frontier
  authors patient's `kb/` → Operator merges) — ledger Decisions, **2026-05-27**. Practiced
  earlier informally; named explicitly only when ambiguity around case-1's PR #1171 mis-homed
  Healer-domain content into the patient's `kb/` surfaced the need.
- `[POST-HOC]` **Single-home-per-fact discipline** declared — in ledger preamble +
  `kb/glossary.md` (v0.1, ratified **2026-05-28** — *yesterday*). One of the latest-arriving
  disciplines despite being one of the most load-bearing for honest record-keeping.

### 4. Operating discipline
*(New section, dyad-specific — the operating-state machinery the predecessor template did not
need because it targeted a single-state runtime, the SPAO loop. Dyads have postures, sessions,
and resume-mode discontinuities the engine model didn't have to face.)*

- `[POST-HOC]` **Operating-anchor** (`CLAUDE.md`) — committed mid-stream (in `577d6e7`,
  2026-05-27), explicitly *because* verify-before-asserting had already failed under long context
  in a prior session (asserted `/goal` absent without grounding; stale-SHA assertions). The
  loadable-first-every-session discipline was *driven by failure*, not pre-declared.
- `[POST-HOC]` **Execution-loop adopted** (SPAOR) — ratified **2026-05-27** via 3-turn dialectic
  in `kb/execution-loop.md`. Operation against cases 1 and 2 ran without an explicit codified
  loop; the loop was distilled *from* the operation, not declared *for* it.
- `[POST-HOC]` **Posture taxonomy** (Exception / Building / Authoring-Research) — ratified
  **2026-05-27** in `kb/modes-of-operation.md`. Three postures emerged from observed operating
  modes; codified retrospectively.
- `[POST-HOC]` **Reflection mechanism** (`kb/practice-reflection.md`) — v0.1 ratified
  **2026-05-28** — *yesterday*. The very-late arrival of an S9-equivalent meta-discipline is
  itself notable: this audit could not have been written within the practice's own
  reflection-form before yesterday.
- `[POST-HOC]` **Glossary v0.1 stub** (`kb/glossary.md`) — v0.1 ratified **2026-05-28**. The
  cross-cutting vocabulary the practice depends on was canonicalized late, after multiple
  terminology drifts (most acutely the Dao→practice friction-correction that immediately
  preceded the glossary's ratification).

---

## Findings → DIP inputs

The `[POST-HOC]` distribution makes the DIP gap list concrete. Each item below names what DIP
v0.1 should *require at instantiation time* so that future dyads do not need a retrospective
audit of this scale to discover their own structure.

### Items that should be PASS at t=0 (declared before any operation)
1. **Identity declaration** with role-name for the agent-half + the dyad's tended-target named.
2. **Parent-form citation** + a statement of what the dyad inherits faithfully vs. what it
   evolves locally.
3. **Operator-hat naming** with channel discipline (named even if there is only one channel at
   t=0 — the naming itself prevents conflation when a second channel later emerges).
4. **Durable-record root + bucket convention** declared (even minimally — `wards/` + `ledger/`
   + `kb/` is a reasonable starting set; further buckets ratified as need surfaces, but the
   *convention of named buckets with single-home-per-fact* is the up-front discipline).
5. **External-to-tended-target boundary** declared in the identity declaration.
6. **Operating-anchor** (`CLAUDE.md`-equivalent) — even as a 30-line stub with the NON-NEGOTIABLE.
7. **Glossary v0.1 stub** — even 3 entries is enough; the *commitment to canonicalize cross-
   cutting vocabulary* matters more than initial coverage.

### Items that legitimately POST-HOC (emerge from practice; DIP should *anticipate* but not
*pre-fill*)
1. **Charter + Governance-Map** — these can be sketched at instantiation but need lived dialectic
   to ratify cleanly. DIP should *reserve placeholder docs* + *require ratification within N
   sessions or before first-discharge*, whichever first.
2. **Execution-loop** — codifying SPAOR-or-equivalent before the practice has run a few cycles
   produces vacuous shape. DIP should require this within N cycles, not at t=0.
3. **Posture taxonomy** — likewise, postures emerge from observed modes. DIP should require *a*
   posture-naming move within N cycles.
4. **Reflection mechanism** — DIP should require an S9-equivalent reflection cadence be named at
   instantiation (even just "we reflect after each major arc") and ratified into a kb doc within
   N cycles.
5. **Ratification chain named** — DIP should require the chain be declared *in* the Identity
   declaration, even if the rest of governance is deferred.

### Methodological contribution back to the template
- The `[POST-HOC]` mark is necessary for retrospective audits. Recommend its addition to
  `HOW-0002` if the patient still maintains that template.

---

## Status: carrying forward (no HITL gate)

This audit is a **`ledger/` evidence artifact**, not a kb/ canonical binding. Its claims are
falsifiable on their own evidence (each `[POST-HOC]` cites a date verifiable against git
history); its methodology contribution (the `[POST-HOC]` mark) gets tested by future use, not
pre-ratification. The HITL-gate import from the predecessor template (`HOW-0002`) was a
substrate mismatch — that template's gate lived in a GitHub Issue checkbox; ours has no
equivalent action surface in flat markdown.

This artifact carries forward as the **evidence input for DIP v0.1 drafting** (Pillar 5
Maturation work). DIP v0.1 itself, as a `kb/` candidate, *will* face ratification — the
load-bearing decision is the protocol, not the evidence input that drove it.

---

*Audit conducted by the Dyad-Healer; subject of audit is the Dyad-Healer itself. The recursion
is acknowledged: a dyad auditing its own instantiation discipline using a template inherited
from the family it tends. The validity of this audit is in the falsifiability of each mark —
each `[POST-HOC]` cites a date that can be verified against git history.*
