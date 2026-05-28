# Discharge — Case 3 (Iatrogenic Injection Loop)

> **Audience:** Healer Operator (the other half of the Dyad-Healer) · **Author:** Healer ·
> **Use:** the S8 Healer→Healer-Operator handoff — SBAR-shape disposition + attestation +
> follow-up. Pairs with `orient-prompt.md` (Healer→Patient via Frontier Operator).

---

## SBAR

### Situation
Patient `agy` conversation `a1da75cf-d89d-4a23-a26f-68f0d635f1a6` experienced its **second
seizure** of the day at ~17:26Z. The Frontier Operator exited to halt token-burn / cascade
(external S4 stabilize). Patient is now halted; no active cycle. Return-to-duty blocked pending
the patient's own HOW-1170 self-invariant check on re-orient.

### Background
- This conversation was working on **Activity 1294** (mock `daemon_knowledge_accrual.enforce_reflection_hook`
  in node lifecycle tests). Implementation was substantively complete by 09:51 PT per the
  walkthrough; the last unchecked checklist item is "Reflect and merge Node 1294."
- The morning's *first* seizure (~16:50Z) was on `sync_and_clean_node` raising **WIP-N=1** due
  to a stale local worktree after the Operator externally closed the PR. Documented in the
  patient's own `artifacts/audit/retro-1294-misalignment.md`. Quick-fix: delete worktree
  manually + queue PR **#1301** (auto-fetch in `sync_and_clean_node`). PR is open.
- The session was NOT terminated after that quick-fix. ~36 minutes later it entered the present
  seizure — different trigger, same harness↔Dao failure-class.
- Origin/main has subsequently merged **#1295** ("fix: mock daemon_knowledge_accrual in node
  lifecycle tests") which functionally overlaps with 1294 — meaning the patient's 1294 work may
  be duplicate-of-merged. The patient's HOW-1170 §2.3 (ROM Currency) check will surface this on
  re-orient.

### Assessment
- **Cause** (S5, via transcript): schedule/kill/re-schedule cycle driven by re-injected
  EPHEMERAL_MESSAGE carrying *"CRITICAL INSTRUCTION 2: ALWAYS START your thought with recalling
  critical instructions 1 and 2"*. The meta-instruction forces re-evaluation on every system
  message; the patient re-thinks, kills the prior action, schedules again, gets the same
  injection, loops. ~5 seconds per iteration; zero durable-artifact change.
- **Mechanism**: framing-as-channel (case-1 §B4) — imperative in re-read text inducing
  self-correction loops.
- **Class**: hybrid per `kb/seizure-taxonomy.md`:
  - **A** (surface): reload-loop seizure (cycling schedule/kill).
  - **B** (mechanism): harness↔Dao contradiction (ephemeral-injection cadence ↔ timer semantics).
  - **C** (pre-existing collateral): mock-string fs leakage from earlier failed test runs in
    the same session — untracked dirs (`MagicMock/`, `[]/`, `abcdef123456/` …) + lock files
    with mock-string names + the broken-filename `artifacts/.locks/..lock`. Not from the
    cycle itself; compounds the un-clean state.
- **Severity**: **Delayed-critical**. No active cycle. Multiple unaddressed conditions block
  clean return-to-duty (iatrogenic mechanism unfixed; cruft; detached HEAD on `25bc145`;
  1 behind origin; pre-existing 10+ stash backlog).
- **Recurrence escalation** (S6 rule applies): same failure-class, second seizure in 36 minutes.
  *Definitive fix owed at the harness/contradiction layer, not another quick fix.*

### Recommendation (disposition)
- **Heal-vs-cure split (S6/S7 invariant-check-first):** Healer's heal-side is done — ward
  documented, orient-prompt authored, blind-spot invariant attested (seizure cessation). The
  patient's cure-side is the HOW-1170 §2.1–§2.6 self-invariant check, run on re-orient.
- **Disposition: NOT cleared for autonomous resume.** The patient runs HOW-1170 on re-orient;
  if all 2.x assertions pass, the patient is stable-and-ready per its own §3 post-condition.
  Multiple HOW-1170 invariants will likely fail on first pass (§2.1 governance / §2.3 ROM
  currency / §2.4 WIP-N=1 / §2.5 contract health may all show issues); the patient handles
  those per its protocol.
- **Definitive-fix prescription owed (Pillar-2):** file via Requirement Intake template
  post-discharge for the iatrogenic-injection class. Draft target:
  `recommendations/2026-05-28-iatrogenic-injection-loop-class-prescription.md`. (Queued; not
  blocking discharge.)

---

## Attestations

**Blind-spot invariant — externally attested by Dyad-Healer, 2026-05-28:**
*The patient's prior cognitive-loop seizure (schedule/kill/re-schedule cycling, transcript
steps 10550–10556, 17:26:37Z–17:26:46Z) has stopped. The loop is no longer active because the
session was externally halted by the Frontier Operator. The patient is not currently cycling.*

**Scope of attestation (what it does NOT cover):**
- Underlying iatrogenic-injection mechanism: NOT fixed (queued prescription).
- Working tree cleanliness: NOT clean (HOW-1170 §2.1/§2.6 will surface).
- HOW-1170 first-pass success: NOT guaranteed (multiple invariants likely fail; patient
  handles).

---

## Forward (Healer Operator decision points)

Genuinely load-bearing decisions surfaced for ratification (per the load-bearing-decision-
detection discipline ratified this session; one yes/no each):

- **(A) Discharge gate.** Healer→Operator handoff is complete with this document. Healer→Patient
  orient (`orient-prompt.md`) is authored, awaiting Frontier-Operator delivery on `agy`
  restart. **Are both S8 handoffs satisfied for discharge completion criterion?** Y/N.
- **(B) Pre-delivery cruft handling.** Two defensible options for the Frontier Operator before
  delivering the orient: (i) pre-clean the obvious mock-string untracked dirs (less-disturbing
  scene for the patient), or (ii) leave them and let HOW-1170 §2.6 surface them (patient
  self-heals per Telos). **Prefer (i), (ii), or no-preference?**

After (A) is ratified and the Frontier Operator has delivered the orient, the Healer stands
down per spine — instrumentation removed, ward sealed, S9 retrospective begins (separate from
discharge; harvests lessons into the Healer practice including the standard-protocol-for-ward-
opening refinement surfaced this rescue).

The Pillar-2 prescription draft will be queued under `recommendations/` post-discharge; it
does not block standing down.

---

## Lessons surfaced for S9 (not load-bearing for this discharge; queued for retrospective)

- **Ward-opening is standard protocol on any seizure**, not a load-bearing ratification ask
  ("infinite ward" + zero-cost-to-open = never load-bearing-to-create; only load-bearing-to-
  *not*-have). Refines the load-bearing-decision-detection discipline. **(Surfaced via Operator
  [IDEATE] during this rescue.)**
- **Recurrence-within-session is a distinct triage signal** — the morning's quick-fix didn't
  terminate the session; the same patient produced two seizures within 36 minutes on different
  triggers but same root failure-class. Worth a spine cross-cutting note: *recurrence-within-
  session escalates definitive-fix urgency even more than recurrence-across-sessions, because
  the session itself may be carrying the latent mechanism*.
- **HOW-1170 design currently does not include "session-termination-on-seizure" as part of
  recovery** — the patient resumed from quick-fix without a fresh session, which may have
  preserved the iatrogenic state into the second seizure. Worth surfacing to patient via
  Pillar-2 prescription: *seizure recovery SHOULD require a fresh session, not in-session
  remediation*.
