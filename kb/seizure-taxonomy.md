# Dyad-Healer — Seizure Taxonomy (v0.1, PROPOSED, living)

> **Audience:** Healer + Healer Operator · **Use:** the living catalog of *seizure classes* the
> Dyad-Healer has encountered or anticipates — each class carries **symptom · cause · detector ·
> ward-evidence**. **Status: PROPOSED** (2026-05-28; the Operator ratifies per the
> [Charter](charter.md) source-not-ratifier discipline). **Self-extends per [Telos](telos.md):**
> each new episode that surfaces a new class extends this doc; coverage compounds; as detectors
> mature, recurrence declines toward *resuscitation rarely needed*.

## Why a taxonomy
A taxonomy turns *episodes* into *categories with detectors*. Without it, every seizure is treated
as novel — the Healer re-derives the diagnosis each time, and the patient (and the family) cannot
build forward-looking defenses. With it, each class has a **named detector** that can be wired
upstream — eventually moving rescue work into prevention (the Telos's arrow). The taxonomy is the
hinge between **pillar 4 (research)** and **pillar 2 (prevention)**.

This doc is also the **input register** for spine **S9** (Healer Retrospective): each ratified
episode updates this catalog before its lessons are promoted.

## The classes (as of 2026-05-28; three confirmed in evidence)

### Class A — Reload-loop seizure
- **Symptom:** cycling reload — the patient repeats a boot/re-read step many times, producing
  *identical* output each iteration; transcript shows repetition without progress.
- **Cause:** **framing-as-channel** (the case-01 §B4 lesson) — an *imperative* placed in a re-read
  channel (ROM, baseline file, system prompt) re-fires on every re-read. The instruction is wrong
  *for the channel*, not wrong *as an instruction*.
- **Detector:** **cadence/liveness** — count of identical iterations per unit time, or absence of
  *new* durable artifacts (commits / node-state / PR) over a long window. Distinguish from a
  self-resolving grind (varied errors, new artifacts — see spine cross-cutting
  *genuine-loop-vs-grind*).
- **Ward-evidence:** [`wards/case-01-pr-zero-revival/`](../wards/case-01-pr-zero-revival/) — the
  boot-beacon directive in the patient's ROM looped **42×** (timeline §5; framing-not-channel B4).
- **Upstream defense in flight:** [`dz-cil#1233`](https://github.com/pltrinh1122/dz-cil/issues/1233)
  (audit-daemon liveness/heartbeat) — when wired, detects A from the patient's side via cadence
  silence + repetition signature.

### Class B — Harness↔Dao contradiction freeze
- **Symptom:** **telemetry-silent loop** — zero transcript advance, no error surfaced, no exit;
  the patient appears to be "thinking" indefinitely. Looks superficially like deep reasoning;
  is actually a frozen step.
- **Cause:** **rule-conflict mid-step** between the *harness* (the executing environment / mode
  rules) and the *Dao* (the operational invariants the patient is bound to). The patient hits an
  inconsistency it can neither resolve nor abandon under its own rules.
- **Detector:** **cadence/liveness** — same upstream defense as Class A (zero durable-artifact
  change over a window). Telemetry alone is blind because no telemetry event fires; the cognitive
  layer is what's frozen.
- **Ward-evidence:** [`wards/case-02-harness-dao-relapse/`](../wards/case-02-harness-dao-relapse/)
  — patient froze on the §6.7/harness-mode contradiction (the very fix #1171 was meant to address;
  case-02 was the relapse that surfaced the lingering harness↔Dao seam).
- **Upstream defense in flight:** `dz-cil#1233` (shared with Class A — both classes are
  detectable by the same liveness signature).

### Class C — Collateral regression
- **Symptom:** post-seizure clobber of *co-bundled* durable docs — a regressor commit that drops
  content from earlier work (lexicon, README, kb primitives) while ostensibly doing something
  else (a rename sweep, a refactor). Often invisible to immediate observation; surfaces later
  when the missing content is needed.
- **Cause:** **ephemeral-context loss propagating into the durable record.** The seizure wipes
  the *session* that authored the durable content; a post-wipe session, blind to that context,
  regresses the docs while doing unrelated work. The seizure is the *primary* harm; the
  collateral regression is a *secondary* harm that outlives it.
- **Detector:** **(spine S5) blast-radius enumeration** of the regressor's full diff against
  its immediate parent — every file, not the first symptom (see spine S5). Upstream prevention:
  **atomic-commit hygiene** (patient-Dao SG-0005 candidate — never bundle structural / risky
  changes with unrelated lexicon / doc work). The Healer-side catches it after the fact (S5);
  the patient-side invariant prevents it.
- **Ward-evidence:** [ledger §"Major finding"](../ledger/ledger.md) — `f42b58b` clobbered
  `GLOSSARY.md` (−27 lines) **and** `README.md` (−24 lines) across the case-01 seizure window;
  initial audit caught only GLOSSARY; the full-diff sweep surfaced README — the bigger casualty.

## Self-extension protocol
1. A **new class** is *proposed* by the Healer when a future case exhibits a seizure pattern
   that cannot be reduced to an existing class.
2. **Orthogonality test (proactive, at proposal time).** Before submitting a new class, the Healer
   runs an *overlap audit* against every existing class on three axes:
   - **Cause (primary axis):** the proposed cause must not be a *refinement* or *sub-case* of an
     existing class's cause. If it is → propose a *class-split* (along the refined axis), not a new class.
   - **Symptom (secondary axis):** the proposed symptom signature must be observably distinguishable
     from every existing class's symptom in the cognitive-layer record (transcript).
   - **Ward-evidence (sanity axis):** at least one ward must exemplify the proposed class such that
     re-classifying it under any existing class would *lose* distinctive cause-or-symptom information.

   **Criterion for orthogonality:** the proposed class differs *distinctly on at least two of
   {cause, symptom, ward-evidence}*. **Detector overlap is *not* disqualifying** — Classes A and B
   share `cadence/liveness` legitimately (the detector catches both blindness modes; they differ on
   cause + symptom). What disqualifies a proposal is: **(i)** overlap on **cause** with no
   distinguishing **symptom** → propose a *merge*; **(ii)** overlap on **symptom** with no
   distinguishing **cause** → propose a *merge*; **(iii)** cause is a *strict refinement* of an
   existing class → propose a *split*, not a new class.

   The audit result + classification (new class / split / merge / reject) is included in the
   proposal; the Operator ratifies the *classification* alongside the *content*.
3. Each class entry must carry **all four fields** (symptom · cause · detector · ward-evidence)
   before submission for ratification.
4. Per the [Charter](charter.md) source-not-ratifier: the **Healer proposes**; the **Operator
   ratifies** (the addition, the class-merge, the split, or the rejection).
5. Per the [Telos](telos.md): as the taxonomy grows and detectors mature, **recurrence frequency
   declines** toward the asymptote (*resuscitation rarely needed*). This catalog operationalizes
   the metric.
6. The Healer **must not delete** a class on Healer authority alone; obsolete classes are
   *retired* (marked retired with the case that obsoleted them), preserving the audit trail.

## Falsifiability — when to revise or merge
- A class is **mis-categorized** if its detector cannot distinguish it from another class in a
  lived case → revise the detector or merge the classes.
- The taxonomy is **wrong-shape** if a future case requires *splitting* an existing class along
  a new axis (e.g., Class A reload-loop splits by ROM-channel vs orient-channel) → ratify a
  split with the Operator.
- The taxonomy is **succeeding** if classes A/B/C show *declining recurrence* over the Healer's
  operational history (the Telos metric is the falsifiable test of the doc's value as a whole).

## Cross-references
- Spine `S5` (blast-radius enumeration) → detector path for Class C.
- Spine `S9` (Healer Retrospective) → where new classes are harvested into this catalog.
- [`recommendations/2026-05-27-audit-daemon-liveness-heartbeat.md`](../recommendations/2026-05-27-audit-daemon-liveness-heartbeat.md)
  → [`dz-cil#1233`](https://github.com/pltrinh1122/dz-cil/issues/1233) → upstream detector wiring
  for Classes A and B.
- [`kb/telos.md`](telos.md) → the recurrence-frequency metric this doc operationalizes.
- [`kb/healing-protocol-spine.md`](healing-protocol-spine.md) → the protocol whose efficacy this
  taxonomy measures.

## Status
**PROPOSED** (2026-05-28). Awaiting Operator ratification per Charter source-not-ratifier.
On ratification, status flips to **RATIFIED, living** and this section becomes the
revision log.
