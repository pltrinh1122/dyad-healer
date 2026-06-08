# Dyad-Healer — Seizure Taxonomy (v0.1, RATIFIED, living)

> **Audience:** Healer + Healer Operator · **Use:** the living catalog of *seizure classes* the
> Dyad-Healer has encountered or anticipates — each class carries **symptom · cause · detector ·
> ward-evidence**. **Status: RATIFIED** (2026-05-28 by Healer Operator approval; per the
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

## The seizure invariant (what a seizure *is*) — RATIFIED 2026-06-07

The classes below are *instances*; this is the **invariant** they share — the property that is true of
every seizure and false of healthy work. **It is the discriminator; the per-class symptoms are not.**

> **The invariant — a blocking-state conserved under the patient's own actions.** The patient acts, but
> the precondition that blocks it does not move: the control loop is **open** (the failure/feedback is not
> changing the next action), so the **unresolved set does not contract.** Cybernetically: *error not being
> reduced by the agent's own activity.* In our terms: *sustained force against an unyielding grain.*

**What is NOT the invariant (symptoms, present in healthy work too):**
- **Guard-firings / `[🚫 BLOCKED]` markers** — a guard firing is the loop *closing* (the steering vector
  being delivered); per cybernetic steering it is the system *working*. Conflating a guard-firing with a
  seizure is a category error (lived 2026-06-07: a marker-based watcher read healthy guard-steered work as
  relapse; corrected only by checking **contraction**).
- **Repetition · duration · busy-ness** — a seizing agent is busy; so is a working one.

**Corpus check:** #1793 — ghost node resurrected each sync, local fixes *discarded* → blocking-state
**conserved** under 17h → seizure. case-03 — ephemeral-injection re-trigger conserved under schedule/kill →
seizure. 2026-06-07 (#1806 context) — #1826 **merged**, #1825 **mapped**, locks cleared → unresolved set
**contracting** → *not* a seizure despite identical guard-firings.

**Falsifier:** a state all agree is a seizure where the blocking precondition is *demonstrably contracting*
(genuine durable progress) → the invariant is wrong.

### `bind:` — the seizure invariant → a deterministic contraction detector  *(cairn `bind`: anchor a rule to a physical deterministic tool, not fallible generative memory)*

The invariant is **bound** to a deterministic detector of **contraction**, *not* to markers and *not* to the
Healer's memory (marker-detection is the refuted primitive). Deterministic spec the detector must implement:

- `progress(W_p)` over the **progress window** `W_p` := durable advances of the patient's *landed* state —
  commits reaching the integration branch, **merges included** (a merge is the strongest landing).
  *(Measure landed state, not activity; ground the git window with explicit epoch bounds — the 2026-06-07
  timezone bug that faked `progress=0` is a bound-to-memory failure this bind exists to prevent.)* Node-status
  advance (`Backlog → … → Completed`) is the conceptual ideal but is **deliberately not coupled** in the
  mechanism: it would hard-depend on the patient's internal frontier_state, and the patient is
  live/self-modifying. Commits+merges are the substrate-generic durable signal.
- `activity(W_a) > 0` over the **activity window** `W_a` := transcript/action growth in `W_a`.
- **Cadence calibration (2026-06-07):** `W_a ≠ W_p` by design. *Is it acting now?* (short `W_a`) is asked over
  a different horizon than *has it landed progress at its cadence?* (longer `W_p`, default ~3× `W_a`,
  ultradian-tolerant). A single fixed window false-positived legitimate slow-cadence work (busy now, last
  commit 40 min ago → `progress==0` → false SEIZURE); the split fixes it. Fixture-proven in `--selftest`.
- **seizure-suspected ⟺ `activity(W_a) > 0 ∧ progress(W_p) == 0`.** `progress(W_p) > 0` **refutes** seizure
  regardless of marker volume.

**Binding status — BOUND (physical), 2026-06-07.** The invariant is anchored to a real, executable tool:
**`bin/contraction-check.sh`** — it computes `progress(W)`/`activity(W)` (epoch-bounded) and emits the
verdict; it **ships with `--selftest`** (the invariant's truth table; a guard-on-the-guard) and is **armable
only when that self-test passes** (it caught a corner-case defect on first run — the gate working). Proven by
execution: `--selftest` → PASS; live → `CONTRACTING` (reproduced the 2026-06-07 not-a-seizure diagnosis
deterministically). The full live watcher (Pillar-3 **C**) *wraps* this core; the detection verdict is now a
tool, not memory/markers. *(Provenance: Operator rub "prove the bind physically exists" — the prior
markdown-only "bind" was a non-bind; this replaced it with the mechanism.)*

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

## The self-detection law (cross-cutting) — `self-detection = G1 ∧ G2`

Each class above carries a **detector**; this law states when any detector actually catches its class
**from the patient's own side** (self-detection), rather than the seizure staying silent until the
Healer (external) finds it.

**Invariant (falsifiable):** a seizure is **self-caught iff** —
- **G1 — the observer is live:** an external-to-the-loop observer (the patient's Audit Daemon) is
  actually running / boots successfully; **and**
- **G2 — the detector covers the signal:** that observer runs a detector whose *watched signal* the
  seizure actually emits.

Open **either** gate → the seizure is **silent / external-only** (only the Healer catches it).

**Substantiation (retrodicts 4/4, no counterexample):** cases 01–03 (reload-loop, harness↔Dao freeze,
iatrogenic-injection) emit no failing-test signal and the daemon was inactive → **both gates open →
silent**, caught only externally. Case-04 (deprecation-cascade) emitted *accumulating* lexical failures
with the daemon active → **both gates closed → self-caught** (count detector tripped at 67). **Honest
limit:** 01–03 had *both* gates open, so the evidence confirms the conjunction and the both-closed→caught
direction but does **not yet isolate each gate's independent necessity** — substantiated, not fully resolved.

**Corollaries:**
- **Detection is the sole bottleneck.** Recovery is already solved (02/03/04 self-healed once halted) →
  raising self-healing efficacy (the [Telos](telos.md)) is overwhelmingly a *detection* problem.
- **Cause-type is orthogonal to detectability.** Iatrogenic-vs-latent does not predict self-catching;
  the discriminant is purely **signal↔detector match** (G2). Carried as a separate taxonomy axis.

**Live state + forward experiment (the live patient *is* the test):** Gate 2 for the freeze/loop class
was closed by the patient building [`#1233`](https://github.com/pltrinh1122/dz-cil/issues/1233) as Path
#1350 (`evaluate_liveness_stall`); Gate 1 stays **open** (broken daemon bring-up —
[`#1393`](https://github.com/pltrinh1122/dz-cil/issues/1393)-V2).
- **P1:** while G1 stays open, the next freeze/loop seizure stays **silent** (isolates G1's necessity).
- **P2 (the Telos-test):** once #1393-V2 lands and the daemon boots (G1 ∧ G2), the next freeze/loop
  seizure is **self-caught**.
- **Falsifiers:** a freeze seizure self-caught with the daemon down (kills G1); or silent with *both*
  gates closed (kills sufficiency).

Each confirmed prediction converts this **posted** theory toward **deliverable** authority (the
deliver/post conversion point — see [`governance-map.md`](governance-map.md) §Intervention authority & posture).

**Status:** named invariant RATIFIED 2026-05-30 (ledger §"2026-05-30 Self-detectability gradient");
codified here 2026-05-31.

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

## Status / revision log
- **v0.1 — RATIFIED 2026-05-28** (Healer Operator approval). Three classes ratified (A reload-loop,
  B harness↔Dao freeze, C collateral regression). Self-extension protocol includes a proactive
  orthogonality test (added pre-ratification per Operator [FEEDBACK]: original protocol had only
  an implicit, vague, reactive "cannot be reduced" criterion).
