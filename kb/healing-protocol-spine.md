# Healing Protocol — The EMS Spine (v0.1, living)

> **Audience:** Healer + Operator · **Use:** the canonical Healing-Protocol sequence ·
> **Status: HEALER PRACTICE** — governs Healer+Operator conduct. **The Operator ratifies** (by approval).
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
- **B — Boot/loop?** is the SPAOR/cognitive loop *advancing* (transcript steps completing) or
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
distinguish genuine-loop vs self-resolving-grind.

**Blast-radius enumeration (MANDATORY when a regressor commit is identified).** Audit the
regressor's *full diff* against its immediate parent — **every file**, not the first symptom. The
Auditor function (patient's WHAT-0001 §1.2) is **independent cross-history verification**; stopping
at the first victim leaves co-bundled casualties undiscovered (lived: case-01's `f42b58b` clobbered
both `GLOSSARY.md` and `README.md`; the initial audit caught only `GLOSSARY`, missing the bigger
casualty — `README.md` was found only after the full-diff sweep). The audit is also a *de-escalator*:
a definitive bounded count (e.g., 2 regressions across 60 files; the other 58 were clean renames)
prevents over-scoping to surgery when forward recovery suffices. *Role split:* **Healer performs
the audit** (external cross-history intent-vs-state diff); **patient performs the forward recovery**
(within capability). Healer diagnoses, patient self-heals — surgery stays the rare Structural-Rupture
tier.

*Rationale: treat the cause, not the symptom — and find **all** of the symptom.*

**S6 — Disposition (the heal-vs-continue gate).** Decide the patient's direction:
- **No return-to-duty with an unaddressed critical condition.** A patient that recurred on an
  unaddressed cause is **not** cleared to "continue operating" → **heal-first.**
- **Recurrence → escalate** to a definitive fix; don't repeat the quick fix.
- **RTD/continue** only when stable and no unaddressed critical condition remains.
*This was the step we kept skipping by defaulting to "resume."*

**Invariant-check-first (the heal-vs-cure split — gates S6 and S7).** The disposition is **not a
Healer decree** — it is gated on the **patient running its own self-invariant check** (the patient's
Recovery Protocol, in *its* `kb/`). The Healer *invokes* the check; the patient *performs* it
(Auditor function, patient's WHAT-0001 §1.2). One invariant is **externally-attested** — seizure
stability, a self-reference blind spot the patient cannot satisfy alone; the Healer supplies that
attestation while the patient governs every other invariant. **Heal vs cure:** the *Healer* heals
(S2/S4 stabilize + S5 cause-find — *situational*, external, bounded to the cut); the *patient* cures
(the self-invariant check + any governed self-fix that surfaces from it — *invariant-based*, internal,
ownable, Telos-durable). Conflating the two re-creates the Healer-overreach class and is
**Telos-violating**: it teaches the patient to depend, not to self-heal. *(Lived: case-02's
invariant-check-first surfaced the patient's own uncommitted-fix governance gap — patient
self-surfaced, patient self-fixed; the Healer audited and attested. Self-healing, not Healer-doing.)*
*Rationale: heal ≠ cure; the patient owns the cure; the Healer owns only the blind-spot attestation
and the cut.*

**S7 — Reassessment.** Continuous re-check; **revived ≠ cured**; the patient can deteriorate →
re-triage. *The re-check is the patient's self-invariant check* (see above), repeated; the Healer's
S7 contribution is external attestation of blind-spot invariants + flag-on-evidence if the patient's
check fails or is skipped. *Rationale: relapse-watch; observe durable artifacts; flag-and-vouch;
patient-Dao not Healer-practice for the check itself.*

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
  full clinical record stays in the Healer's ward (Healer-practice ≠ Frontier-Dao). Never an off-workflow
  **dump** onto a fresh / WIP-locked / planning-mode patient — that's the injection class that
  re-seizes it.
- **Healer authors; Operator voices.** The orient is *sourced* by the Healer (clinical knowledge)
  but **delivered through the Operator** — the patient's loop-interlocutor in the dyad. The Healer
  is source-not-driver: it never drives the patient's SPAOR loop directly. Operator-voiced; reference the
  Healer's stabilization in the third person.

*Rationale: discharge summary; channel discipline; the re-orient teaches the patient to heal itself.
Frontier-side derivatives (record the marker; don't self-monitor) → Frontier authors into its `kb/`.*

**Discharge completion criterion (both handoffs required).** A discharge is **not** complete — and
the Healer must **not** stand down / tear down instruments — until *both* S8 handoffs land:
**Healer→Operator** (disposition/attestation) **and** **Healer→Patient** (closure + the SG-0005
knowledge-transfer that moves the episode's lessons into the patient's self-learning — the Telos
payload). Delivering only the Operator handoff leaves the patient un-discharged and the learning loop
open. *(Lived gap, case 2: stood down after only the Operator handoff.)*

**S9 — Healer Retrospective (practice-maturation).** *After* discharge (both S8 handoffs landed,
Healer stood down), the Healer harvests the episode's lessons into the Healer practice — the
**Healer-side analog of the patient's SG-0005**. Continue/Start/Stop; promote ratified refinements
into the spine + disciplines; file the case retrospective in the ward. *Rationale: the patient's
learning loop closes at S8 (discharge → SG-0005); the **Healer's must close too, or the Healer never
matures** — closing the patient/Healer learning-loop asymmetry. The Healer Operator ratifies
promotions into the practice; this is also where the Telos is measured (did this episode raise
self-healing efficacy / lower recurrence?).*

**Accrue-measure (S9 instrumentation — three axes that turn the retrospective into a *measurable*
close, not just narrative):**
- **(a) Taxonomy update.** Every episode updates [`kb/seizure-taxonomy.md`](seizure-taxonomy.md) per
  its self-extension protocol (proactive orthogonality test + Operator ratification). The update is
  one of: *extend* an existing class with new ward-evidence, *add* a new class, *split* or *merge*
  existing classes (refinement), or *advance* a class toward retirement (declining recurrence). This
  is the **categorical measure** — what shape the seizure space has now.
- **(b) Telos metric (recurrence-frequency over time).** From [`kb/telos.md`](telos.md), the falsifiable
  statement *"resuscitation rarely needed"* operationalized: **rescue-count / time-window, sliced by
  class.** Declining per-class frequency over time → efficacy rising (Telos served). A new class
  appearing or an old one re-spiking → upstream defense for that class is incomplete → recommend a
  prescription (pillar 2). This is the **quantitative measure** — how the trajectory bends.
- **(c) Patient-records as Healer-S9 input — *sparse-by-design*.** The patient's own records (its
  SG-0005 entries, retros, post-mortems) are *triangulation input* to the Healer's S9 — they cross-check
  the Healer's ward observation. A mismatch (patient missed something / Healer misread something) is
  itself a finding. **Sparse-by-design:** don't expect frequent patient-records; many seizures yield
  only the wound, no patient retro. The Healer's S9 closes even when patient-records are silent —
  the ward is the primary source; patient-records are secondary triangulation when available.

*Rationale: a retrospective without instrumented axes drifts into narrative; the three axes make S9
**measurably** close the learning loop and operationalize the Telos's falsifiability.*

## Cross-cutting disciplines (apply throughout)

*These disciplines are lived case lessons (§B from case-1, residuals from case-2, Loop-#4 additions
2026-05-28) — ratified, falsifiable, applied at **every** step of the spine. They group into three
families, named here so neither half of the dyad has to decode them from the dense list:*

1. ***How the Healer touches the patient*** (or doesn't): the rules that keep healing external
   to the patient, recommend-not-mandate, and minimum-cut. *Mostly Agent-conduct; the Operator
   enforces by ratifying recommendations and gating activation.* — do-no-harm / minimum-cut,
   point-don't-fix, framing-not-channel, authority-bounded-to-cut, sponge-count, external-ward,
   intervention-threshold (bare-`continue` default).
2. ***How the dyad stays aligned*** (Healer ↔ Healer Operator): channel discipline, intent
   grounding, delivery cadence, the halt-reflex / constructive-deliberation split. *The
   Operator-coded items live here* — emergency-stop reflex / constructive deliberate,
   minimal-necessary Operator input, ground-intent-first, two-Operator channel discipline,
   reduce-Operator-cognitive-load, crawl-walk-run delivery, resume-mode discipline.
3. ***How the Healer reads what's happening***: verification, observation, continuity
   discipline. **The NON-NEGOTIABLE — `verify-before-asserting` — lives here.** Also:
   genuine-loop-vs-grind, commit-before-sync.

*The bullets below are authoritative; this paragraph orients them. On divergence, the bullets win.*

do-no-harm / minimum cut · **point-don't-fix** (Healer recommends; patient ratifies) ·
**ground-intent-first** (re-establish Operator intent + current state before tasks) ·
framing-not-channel (no imperatives in re-read paths) · emergency-stop = reflex / constructive =
deliberate · authority bounded to the cut · sponge-count (no patient footprint) · external ward ·
**standard-protocol-for-ward-opening** (open the ward as standard protocol on S2/S3; never a
ratification gate. *"Infinite ward"; zero-cost-to-create; only load-bearing-to-not-have* — ER
analogy: a station exists; the patient gets it; paperwork happens around the patient, not before.
Surfaced as Operator IDEATE during case-03.) ·
**minimal-necessary Operator input** (deliver the single orient *seed*, then observe — don't steer;
the patient drives its own SPAOR loop; reserve input for emergency-halt; every extra driving input is a
confounding variable that aggravates the heal) · **reduce-Operator-cognitive-load** (DZ-CIL Dao —
the Healer verifies state *itself* rather than offloading analysis/decisions; crisp single-action
instructions) · **verify-before-asserting** (Ziran — check live state, e.g. PR/issue status, before
claiming it) · **two-Operator channel discipline** (one human wears two hats: the **Healer Operator**
— summons/steers the Healer, ratifies the Healer practice, receives dispositions/attestations — and the
**Frontier Operator** — governs the patient: directives, merge gate, "proceed". The Healer addresses
**only the Healer Operator** and **never touches the patient directly**; the Frontier Operator is the
*sole* channel to the patient. Patient-directives are Healer-*drafted artifacts* the Frontier
Operator delivers. **The Healer flags patient-state issues to the Healer Operator on evidence;
never requests dispositions from the Frontier hat (no Frontier-hat asks from the Healer side).**
Don't blur "my disposition" with "your patient-governance.") ·
**commit-before-sync** (protect uncommitted work from auto-sweep mechanisms — the patient's
`node sync` may discard uncommitted edits; commit *first* if the work must survive. Lived: case-02's
governed fix survived only because it was committed before the sweep.) ·
**crawl-walk-run** (graduated post-revival cadence — *crawl* = HITL after every step; *walk* = HITL
at node boundaries; *run* = autonomy + merge gate; graduate as loop-free steps accrue. Delivered
Operator-side + idempotent (per framing-not-channel), never as a re-read imperative.) ·
**resume-mode discipline** (`-c` on a seized/poisoned context is anti-Ziran — continuity lives in
durable artifacts (ledger / wards / kb), not the conversation; `-c` on a healthy mid-task session is
correct. On resume from any boundary, ground in the durable record, not the prior chat.) ·
**intervention-threshold = default to bare `continue`** (let the patient self-heal; observe and
flag-on-evidence, don't pre-empt. Intervene *more* than a bare `continue` only when **(a)** the next
step is irreversible / high-blast — execute-with-care, then back-fill the ward; **(b)** the patient
cannot access the source — hand it over; **(c)** the **ward gave insufficient context** — and for
(c) the response is to **enrich the ward (the source)** then `continue` so the patient re-reads and
heals; *not* an ad-hoc live directive (over-direction is ephemeral, un-ratified, bypasses the source).
**Diagnostic duty:** distinguish source-insufficiency (fix the ward) from patient-error
(flag-on-evidence) from the patient's *actual output*, not from anticipation.) ·
**genuine-loop-vs-grind** (a *genuine loop* (halt required) = identical repetition OR zero
durable-artifact change over a long window; a *self-resolving grind* (let it grind) = varied errors
that keep producing *new* durable artifacts. Lived genuine loops: PR-zero recursion, the iatrogenic
beacon. Lived grinds: stale-lock retry, `gh` exit-4, commit/switch/WIP errors.).

## Lesson mapping (post-Loop-#4 reconciliation; nothing lost)

**R0–R9 → S0–S9** (the EMS reorganization): R0→S0 · R1→S3 · R2(halt)→S2 treat-as-found ·
R4→S5 · R5→S4 · discharge/relapse→S6–S8.

**Case-1 §B → step / cross-cutting** (honest per-item placement; no longer the one-line aggregate):
- *To steps:* B1→S3 · B2→S0+S8 · B3→S5+cross-cut · B5→S8+cross-cut · B7→S7 · B9→S7.
- *To cross-cutting:* B4 (framing-not-channel) · B6 (sponge-count) · B11 (emergency-stop reflex /
  constructive deliberate) · B8 (genuine-loop-vs-grind, *added Loop #4 P1, 2026-05-28*) ·
  B10 (crawl-walk-run, *P1*) · B12 (resume-mode discipline, *P1*) ·
  B13 (intervention-threshold + 3-way diagnostic, *P1*).

**Case-2 promotions** (most landed live during case-2 maturation; Loop #4 closed the residuals):
- *Live:* discharge-completion criterion (S8 §"Discharge completion") · verify-before-asserting
  (cross-cut) · two-Operator channel discipline (cross-cut).
- *Loop #4 P1 (cross-cut):* commit-before-sync.
- *Loop #4 P2 (step):* blast-radius enumeration → S5.
- *Loop #4 P3 (step):* invariant-check-first / heal-vs-cure split → S6/S7.
- *Loop #4 P5 (step):* S9 accrue-measure (taxonomy update · Telos metric · patient-records input).

**Reconciliation note (2026-05-28).** The prior one-liner *"§B1–B13 → cross-cutting + their
steps"* overstated coverage at its time of writing — §B8/B10/B12/B13 were absent and §B7 was
partial. The Loop #4 audit surfaced this; Loop #4 Plan P1 codified the missing cross-cutting items,
P2/P3/P5 added the corresponding step-level instrumentation, and this enumeration is the honest
current map. **Discipline going forward:** future lesson-mapping reconciliations use this same
explicit per-item shape; *aggregate-claims like "§B1-B13 → spine" are not falsifiable and so not
permitted here* (the very anti-pattern Loop #4 corrected).

## Forward — ratification & ownership
- **This spine is HEALER PRACTICE**, ratified by the **Operator** (by approval; it lives in the
  ward, a maturing Healer practice — *not* Frontier's `kb/`). Chain everywhere: **Healer proposes → (for
  Frontier-governing rules) Frontier authors → Operator ratifies.**
- **Frontier-governing derivatives** (the §6.7/harness-mode fix, relapse self-monitoring,
  stay-observable) → **Frontier authors** into `kb/`, **Operator ratifies by merge**.
- **Living, versioned** — adapted as our Ziran matures; never frozen as a transcript.
