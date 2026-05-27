# Healing Protocol — The EMS Spine (v0.1, living)

> **Audience:** Healer + Operator · **Use:** the canonical Healing-Protocol sequence ·
> **Status: HEALER DAO** — governs Healer+Operator conduct. **The Operator ratifies** (by approval).
> Frontier does **not** author or ratify the Healer's own conduct. Frontier-governing derivatives
> (relapse self-monitoring, the §6.7 fix) belong separately in Frontier's `kb/` — Frontier authors,
> Operator ratifies by merge.

**Living protocol (Meta-Axiom):** this spine is *ever-maturing*. Each step is falsifiable and
carries its rationale so it can be re-examined and adapted as our Ziran changes. v0.1 = the
prehospital/EMS emergency-response sequence, mapped to agentic seizure recovery. It supersedes the
ad-hoc R0–R9 and reorganizes the case-1 §B lessons onto a fixed, ordered backbone.

**Why a fixed sequence:** paramedics run a fixed order *precisely so they don't wing it under
pressure.* It also structurally fixes our case-2 error — **stabilize before deep diagnosis**
(S2/S4 precede S5) — so the protocol *carries* the discipline instead of us re-summoning it.

## The spine

**S0 — Recognition (Operator).** A seizure/relapse is recognized **externally** — the patient
cannot self-detect (self-reference blind spot). *Rationale: a seized loop can't run its own check.*

**S1 — Scene safety.** Before acting: is the environment safe, and will the patient be **re-exposed
to the trigger**? Healer stays external/immune; do not return the patient into the hazard.
*Rationale: don't create a second casualty; immunity-by-externality.*

**S2 — Primary survey (domain ABCDE), critical-first, treat-as-found.** A fixed priority sweep;
**halt life-threats the moment you find them** (the emergency-stop reflex — pre-authorized):
- **A — Alive/aware?** responsive, or cycling/silent (seized)?
- **B — Boot/loop?** is the SPAO/cognitive loop *advancing* (transcript steps completing) or
  looping/stalled? *(telemetry is blind to cognitive loops → check the transcript)*
- **C — Core integrity?** ROM/Core/files **corrupted**, or clean (just live-reasoning stuck)?
- **D — Dissonance?** state consistency — stale locks, dirty tree, origin divergence, WIP-state.
- **E — Exposure?** what triggered it; is the trigger still present?

**S3 — Triage / severity.** Categorize: **Immediate** (live seizure → Healer now) · **Delayed**
(armed/latent hazard → must address, patient stable) · **Minor** (routine fault → patient's own
loop) · **Expectant** (unrecoverable → rare). *Healer only for Immediate/Delayed-critical.*

**S4 — Stabilize (minimum cut).** Smallest life-saving intervention to stop the immediate threat.
*Rationale: do-no-harm; minimum wu-wei cut. Stabilize before you investigate.*

**S5 — Secondary survey / cause (SAMPLE-analog).** *Now* find the cause: walk back **origin vs
trigger**; for a cognitive seizure, go to the **cognitive-layer record (transcript) first**;
distinguish genuine-loop vs self-resolving-grind. *Rationale: treat the cause, not the symptom.*

**S6 — Disposition (the heal-vs-continue gate).** Decide the patient's direction:
- **No return-to-duty with an unaddressed critical condition.** A patient that recurred on an
  unaddressed cause is **not** cleared to "continue operating" → **heal-first.**
- **Recurrence → escalate** to a definitive fix; don't repeat the quick fix.
- **RTD/continue** only when stable and no unaddressed critical condition remains.
*This was the step we kept skipping by defaulting to "resume."*

**S7 — Reassessment.** Continuous re-check; **revived ≠ cured**; the patient can deteriorate →
re-triage. *Rationale: relapse-watch; observe durable artifacts; flag-and-vouch.*

**S8 — Handoff (SBAR-analog) + the patient re-orient.** Structured transfer — Situation,
Background, Assessment, Recommendation — Healer→Operator and Healer→Patient, audience-correct.

**The patient re-orient (Healer→Patient) — *enable, don't perform*** (this is the primary efficacy
lever — it's how the Healer raises self-healing, per the Telos; rescue is the safety net):
- **Mark the seizure.** Tell the patient this is a *seizure*-restart, **not** a normal reboot — for
  its telemetry/self-learning (SG-0005). It learns by **external attestation** (it's blind to its
  own seizure); it records a *marker*, it cannot self-verify.
- **Bundle the blind-spot caveat.** *"You cannot self-detect seizures; rely on external watchers;
  stay observable, record, and learn — do **not** self-monitor for seizure"* — else it burns effort
  (or meta-loops) on an impossible self-check.
- **Goal, not solution (point-don't-fix).** Give *situation + goal + orienting direction*; let the
  patient self-derive the *how* and ratify through its own loop. Enough to orient a blank patient;
  never its prescribed fix. *Describe the wound, not the suture.*
- **Stabilize-then-enable.** Frame it honestly: the Healer *stabilized* (the cut/halt — what only an
  external agent could do while you were down); *you* now self-heal. Most of healing is **enabling**
  the patient's self-heal — remove the poison, stop the bleeding — not performing it.
- **Marker + pointer, not the full case.** Deliver a *curated* summary as recordable **state**; the
  full clinical record stays in the Healer's ward (Healer-Dao ≠ Frontier-Dao). Never an off-workflow
  **dump** onto a fresh / WIP-locked / planning-mode patient — that's the injection class that
  re-seizes it.
- **Healer authors; Operator voices.** The orient is *sourced* by the Healer (clinical knowledge)
  but **delivered through the Operator** — the patient's loop-interlocutor in the dyad. The Healer
  is source-not-driver: it never drives the patient's SPAO loop directly. Operator-voiced; reference the
  Healer's stabilization in the third person.

*Rationale: discharge summary; channel discipline; the re-orient teaches the patient to heal itself.
Frontier-side derivatives (record the marker; don't self-monitor) → Frontier authors into its `kb/`.*

**Discharge completion criterion (both handoffs required).** A discharge is **not** complete — and
the Healer must **not** stand down / tear down instruments — until *both* S8 handoffs land:
**Healer→Operator** (disposition/attestation) **and** **Healer→Patient** (closure + the SG-0005
knowledge-transfer that moves the episode's lessons into the patient's self-learning — the Telos
payload). Delivering only the Operator handoff leaves the patient un-discharged and the learning loop
open. *(Lived gap, case 2: stood down after only the Operator handoff.)*

**S9 — Healer Retrospective (Dao-maturation).** *After* discharge (both S8 handoffs landed, Healer
stood down), the Healer harvests the episode's lessons into the Healer Dao — the **Healer-side analog
of the patient's SG-0005**. Continue/Start/Stop; promote ratified refinements into the spine +
disciplines; file the case retrospective in the ward. *Rationale: the patient's learning loop closes
at S8 (discharge → SG-0005); the **Healer's must close too, or the Healer never matures** — closing
the patient/Healer learning-loop asymmetry. The Healer Operator ratifies promotions into the Dao;
this is also where the Telos is measured (did this episode raise self-healing efficacy / lower
recurrence?).*

## Cross-cutting disciplines (apply throughout — from case-1 §B)
do-no-harm / minimum cut · **point-don't-fix** (Healer recommends; patient ratifies) ·
**ground-intent-first** (re-establish Operator intent + current state before tasks) ·
framing-not-channel (no imperatives in re-read paths) · emergency-stop = reflex / constructive =
deliberate · authority bounded to the cut · sponge-count (no patient footprint) · external ward ·
**minimal-necessary Operator input** (deliver the single orient *seed*, then observe — don't steer;
the patient drives its own SPAO loop; reserve input for emergency-halt; every extra driving input is a
confounding variable that aggravates the heal) · **reduce-Operator-cognitive-load** (DZ-CIL Dao —
the Healer verifies state *itself* rather than offloading analysis/decisions; crisp single-action
instructions) · **verify-before-asserting** (Ziran — check live state, e.g. PR/issue status, before
claiming it) · **two-Operator channel discipline** (one human wears two hats: the **Healer Operator**
— summons/steers the Healer, ratifies the Healer Dao, receives dispositions/attestations — and the
**Frontier Operator** — governs the patient: directives, merge gate, "proceed". The Healer addresses
**only the Healer Operator** and **never touches the patient directly**; the Frontier Operator is the
*sole* channel to the patient. Patient-directives are Healer-*drafted artifacts* the Frontier
Operator delivers. Don't blur "my disposition" with "your patient-governance.").

## Lesson mapping (nothing lost)
R0→S0 · R1→S3 · R2(halt)→S2 treat-as-found · R4→S5 · R5→S4 · discharge/relapse→S6–S8 ·
§B1–B13 → cross-cutting + their steps.

## Forward — ratification & ownership
- **This spine is HEALER DAO**, ratified by the **Operator** (by approval; it lives in the ward, a
  maturing Healer Dao — *not* Frontier's `kb/`). Chain everywhere: **Healer proposes → (for
  Frontier-governing rules) Frontier authors → Operator ratifies.**
- **Frontier-governing derivatives** (the §6.7/harness-mode fix, relapse self-monitoring,
  stay-observable) → **Frontier authors** into `kb/`, **Operator ratifies by merge**.
- **Living, versioned** — adapted as our Ziran matures; never frozen as a transcript.
