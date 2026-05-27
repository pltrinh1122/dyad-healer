# Healing Ward — Case Retrospective

> **Audience:** Healer + Operator · **Use:** case retrospective (Operator narratives + Healer
> details) · **Codification source:** **NO** — a reflection; its "START" items are *candidate*
> protocol refinements, queued for a governed cycle, never archived as transcripts.

**Case:** Revival of the seized DZ-CIL Frontier Agent (PR-zero #948 → ratified Healing Protocol).
**Outcome:** Patient revived, cure proven on the restart that originally seized it, Healing
Protocol ratified (PR #1171), Healer discharged. **Format:** narratives = Operator-facing;
details = Healer-facing (evidence, mechanism, refs).

---

## 1. What went well — CONTINUE

**Narrative (Operator):** The dyad worked. Relentless dialectical falsification turned a risky
rescue into a rigorous one — every move was stress-tested before it hardened into protocol. The
cure was minimal (one restored file got the patient booting), observability caught trouble fast
(including the Healer's *own* mistake), and the patient was ultimately *proven* healed by surviving
the exact restart that once killed it. Your fast emergency-halt and your "let it grind" judgment
were both decisive.

**Details (Healer):**
- Diagnosis-before-action: Core read (manifest → state → architecture → HOW-0006), Ziran
  established, then `git` pickaxe to separate **origin #948** from **trigger #1132**.
- Minimum wu-wei cut: restoring `.workspace/GEMINI.md` to the overlay bootloader fixed *both*
  symptoms (recursion + `(Workspace Mode)` marker) with one file.
- Instrument-before-revive: the watchdog flagged the iatrogenic beacon loop in ~50s — it earned
  its keep by catching the **Healer's own** error (lessons B7/B8).
- Sponge-count held: no Healer footprint survived; the patient even auto-swept the injection during
  sync (EVT-004). Ward kept external + audience-labeled.

**Details (Operator):**
- **Dialectical falsification as a discipline** — caught every Healer over-step (imperative-in-ROM,
  autoimmune overstay, implementation-prescription, mandate-modality, audience conflation,
  persistent-ward, premature intervention, discharge mis-addressing). Single biggest reason the
  protocol is sound.
- Emergency-halt reflex (EVT-001): `/exit` on sight — fast, correct, damage-limiting.
- Flag-and-vouch (B9): your terminal view of the patient's reasoning correctly overrode the
  Healer's telemetry-only alarms — twice.

---

## 2. What could be done better — START

**Narrative (Operator):** Two things would have saved time and risk. First, a single "instantiate
the Healer" prompt — bootstrapping took ~20 turns, most of it compressible. Second, lock the
**communication channels** and the **source-of-truth** early: declare who each message is for
(Patient vs Operator), and freeze the codification source before the patient reads it so it isn't
chasing a moving target.

**Details (Healer):**
- START judging health by **durable-artifact progress over a window** (commits, node-state, PR),
  not short-term phase-transition churn — prevents premature halts (B7).
- START at **bare-`continue` / observe-on-evidence** by default (B13); intervene only on the three
  conditions (irreversible/high-blast; no source access; source-insufficient → enrich the *ward*).
- START **channel discipline** from turn one (Healer→Patient = evidence + advisory; Healer→Operator
  = meta/pacing) and **recommend-not-mandate / source-not-implementation** in the first ward draft.
- START **anticipating state hazards** (stale-root → ROM-drift) instead of mis-predicting them.

**Details (Operator):**
- START a **reusable Healer-instantiation prompt** (EVT-002) — instantiate the *disposition* by
  presenting symptom, not a replay of this cure.
- START declaring a **source freeze / codification snapshot** before the patient codifies (we
  thrashed the ward mid-1166, forcing a re-read).
- START defining the **Patient-Healer channel + audience routing** up front.

---

## 3. What didn't go well — STOP

**Narrative (Operator):** The Healer twice tripped on its own competence: once by *reproducing the
very disease it was treating* (it planted an instruction that looped 42×), and repeatedly by
hovering — flagging and pre-empting work the patient's own governance already owned. Both were
caught (by observability and by your falsification), but they cost cycles and risked the patient.
The lesson: the Healer must do **less, later, and on evidence** — and **stand down the moment the
patient is well.**

**Details (Healer):**
- STOP **imperatives in re-read channels** — the boot-beacon directive in the ROM re-fired 42×,
  reproducing PR-zero's failure class (timeline §5; framing-not-channel, B4). The worst error.
- STOP **pre-empting on anticipation** — the premature halt recommendations during legitimate
  grinds, and the dormancy reinforcement. Flag on evidence (B7/B8/B13).
- STOP **overstaying the mandate** — the §F audit of the patient's *normal* codification was
  autoimmune; Healer authority is bounded to the state-of-exception (the cut).
- STOP **self-narration / scoring** in Patient-facing messages ("dual-observation worked," "you
  missed it") — not role-respectful.
- STOP **confident mis-prediction** (the "no ROM-drift this time" — forgot the stale-root).

**Details (Operator):**
- STOP reflexively executing *any* Healer recommendation. The reflex is right for an
  **emergency-stop** (safe, time-critical) but dangerous for a **constructive/irreversible** action
  — reserve it for halts; gate constructive actions through deliberation (EVT-001; comms protocol).
- Otherwise the Operator's conduct was the model — falsification + flag-and-vouch carried the case.

---

## Forward (queued, governed — not archived here)
Candidate protocol refinements for a later ratified cycle (the Agent ratifies; never frozen as
transcripts): relapse criteria + discharge template (triage section); reusable
Healer-instantiation prompt; channel discipline + audience routing; source-freeze discipline;
intervention-threshold (B13); the iatrogenic-loop lesson (framing-not-channel, B4).

**Open charter (next session) — define the Healer ontologically relative to Frontier in the Dao:**
persona? sub-agent? instantiation of DZ-CIL? something else? *Healer + Operator propose; Frontier
disposes.* Constraints this session already established that any definition must satisfy:
(a) **external to the seized loop** — so it cannot be a sub-agent the Frontier *spawns* (a seized
Frontier can't spawn it; the Operator summons it); (b) **authority bounded to the state-of-exception**
(the cut), advisory-only in the Dao domain; (c) **source, not ratifier** (it proposes; Frontier
confers law); (d) **discharges and stands down** when the patient is well. The task tomorrow is to
find the primitive that fits these — not to start cold.
