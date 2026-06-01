# Dyad-Healer — Practice Reflection (v0.1, RATIFIED, living)

> **Audience:** Healer + Healer Operator · **Use:** the discipline of taking a structured **Continue
> / Start / Stop** reading of our own practice at natural rest points, paired between substrates
> (Healer details + Operator narrative). The *meta-S9* — the spine's S9 closes the *case* learning
> loop; this closes the *session/milestone* learning loop. **Status: RATIFIED** (2026-05-28 by
> Healer Operator approval; per the [Charter](charter.md) source-not-ratifier discipline). Living;
> falsifiable.

## Why

Spine **S9** closes the *clinical* learning loop after each rescue case. But much of the
Dyad-Healer's practice happens *outside* rescue — Loop-#4-style maturation, [IDEATE] dialectics,
governance refinements, friction-corrections. These have no S9-analog; their lessons risk staying
in the conversation rather than reaching the durable record.

A **Practice Reflection** is the *non-clinical* S9 — taken at natural rest points to close the same
learning loop for the meta-work. Without it, validated success patterns drift out of memory between
sessions; corrections accumulate but the *positive* patterns the dyad has earned don't.

## When — two trigger types

### Natural stop (Operator-judged; heuristic; sparse-by-design)
A moment that has the *character* of a rest point. Examples:
- Loop closure (e.g., Loop #4 P1–P6 ratified + adjacent closing work landed).
- Milestone moments (a ratification cycle that resolved a long-standing dialectic; a
  friction-correction that retired a term; a discipline that just earned its keep).
- Mid-session pause where substantial work converged.
- Anytime the Operator surfaces *"rest point"*.

Not every session has one — only those that earned one.

### Explicit stop (Operator-declared; deterministic; always triggers a reflection)
The Operator declares end-of-session — typically because they need to rest for the day or step away
— with intent to `/exit`. *Always* triggers a reflection: captures what the session accumulated
before the active context dissolves. The reflection becomes part of the [resume-mode
discipline](healing-protocol-spine.md) — the next session starts by reading the most recent
reflection from `ledger/reflections/` as part of grounding.

### Retrospective scope — the inter-Retrospective span

A **Retrospective** (the CSS unit; *= Practice Reflection*) spans **all activity since the last
Retrospective** — not a single session or stand-down. Two boundary events are distinct:

- **Stand-down log** — *every* explicit stop produces one (stand-down record + TO-DOs +
  commit-before-sync). Forced/interrupt stops (token-limit, environment) qualify — work-survival
  binds on every stop regardless.
- **Retrospective (CSS)** — taken at a *true rest point* (a natural stop, or an explicit stop that is
  a genuine session-end), scoped back to the previous Retrospective. A forced/interrupt stop **logs a
  stand-down but does not itself spawn a Retrospective**; its activity rolls into the next
  Retrospective's span.

This corrects the prior reading of "explicit stop *always* triggers a reflection" (above), which
mis-fired on the forced token-limit stop of 2026-05-31 (two thin fragments where one span-Retrospective
belonged; consolidated → `ledger/reflections/2026-05-31-self-detection-to-codification-retro.md`). The
§Default-flow work-survival guarantee is unchanged — it now rests on the stand-down log +
commit-before-sync, not on spawning a full CSS each stop. *Provenance: Operator [ALIGN] 2026-05-31.*

## Stand-down discipline

**Stand-down** = the explicit-stop boundary that closes a session and prepares for `/exit`. The
discipline binds three things: the **default flow** (Reflection-before-Stand-down), the
**Healer-side support** (session-cadence surfacing for Operator self-pacing), and the
**fallback** for fatigue-driven Reflection-deferral.

### Default flow — Reflection before Stand-down

The Reflection completes **before** Stand-down:

1. Healer drafts the reflection (Step 1 of the four-step form; below).
2. Healer commits the draft (closes the commit-before-sync gap; preserves work if `/exit` interrupts).
3. Operator engages Step 2 (POV per CSS section, or "no POV").
4. Healer runs Step 3 falsification (if Step 2 produced POV) + Step 4 integration.
5. Operator ratifies final.
6. Stand-down logged at `ledger/stand-downs/<date>-session-stand-down.md` — TO-DOs queued for next session.
7. Then `/exit`.

This sequencing ensures the reflection survives the conversation. Skipping step 2 (uncommitted
draft + `/exit`) loses the reflection — the divergence-gap pattern from the parallel-fork lesson
applies.

### Healer-side support — session-cadence surfacing

The Healer tracks session length + Operator local time **silently** (Pacific; ground via `date`
at session start + periodically) and **surfaces ONLY at evidence-driven triggers** — not at
every cycle. Notification acceptance drops ~30% per additional reminder; relevance > rate.
This is the Healer-side primitive serving the Telos *Scope: Operator health* concern.

**Surfacing triggers (research-tuned):**

- **First ultradian boundary (~90 min into session):** "one ~90-min cycle completed; natural
  rest point if appropriate." (Kleitman BRAC; Newport/Huberman deep-work consensus.)
- **Second ultradian boundary (~180 min):** pacing-aware cadence reminder.
- **Sustained-workday boundary (~270 min, ~4.5 hr):** stand-down consideration — approaching
  the 2-3-deep-sessions-per-day sustainable limit.
- **Decision-fatigue signal:** 5+ consecutive ratifications without REFINE/REDIRECT = possible
  fatigue accumulation (Danziger 2011 parole-board pattern); explicit fatigue-check.

**Time-of-day overlay** (per Operator chronotype: peak ≈ afternoon, fatigue onset ≈ 5 PM,
high-vulnerability ≈ 9 PM):

- **Before 5 PM Pacific:** ultradian-aligned cadence as above; no early stand-down suggestion.
- **After 5 PM Pacific (close-monitor):** ultradian intervals shorten to ~60 min; fatigue
  signals weighted higher.
- **After 9 PM Pacific (high-vulnerability):** stand-down suggestion at next major closure;
  cadence at each cycle boundary.

**Don't:**

- Surface at every Y/N exchange (over-frequent = naggy + desensitization).
- Suggest stand-down before ~270 min unless explicit fatigue signal or ≥9 PM.
- Periodic reminders independent of evidence (notification research: alarm fatigue from
  non-relevant alerts dominates degradation).

*Research sources:* Kleitman BRAC (ultradian rhythm); Newport/Huberman deep-work consensus
(60–90 min optimal; 2–3 sessions/day sustainable); Danziger 2011 (decision fatigue); Cho 2017
(alert acceptance drops ~30% per additional reminder).

### Fallback — fatigue-driven Reflection-deferral

If fatigue arrives before Reflection completes, the Operator may declare explicit-stop with
Reflection-deferral. The deferred Reflection is logged as a TO-DO in the stand-down; next-session
resume executes the deferred Reflection per resume sequence. **This is FALLBACK** — the default
is to complete Reflection before Stand-down; deferral is acceptable but signals the cadence-
surfacing missed its pacing window.

*Lived: 2026-05-28 deferred Reflection → 2026-05-29 derailment-then-completion (4 substantive
items closed before the deferred Reflection itself executed). Each derailment was substantive
work, but Reflection-completion was always "next" — the deferral cost was real.*

## Format — Continue / Start / Stop, two-substrate-paired

Mirrors `wards/case-*/retrospective.md`:

```
# Dyad-Healer — Practice Reflection — <date> — <scope>

## 1. CONTINUE — what worked
**Narrative (Operator):** <Operator's voice — the day's character; what landed; recognition of
patterns worth keeping.>
**Details (Healer):**
- <bullet> — <which discipline, applied where, what made it land>
- <bullet>

## 2. START — what to do better
**Narrative (Operator):**
**Details (Healer):**
- <bullet> — <specific improvement; ideally falsifiable: "do X under condition Y">

## 3. STOP — what hurt (or almost did)
**Narrative (Operator):**
**Details (Healer):**
- <bullet> — <specific anti-pattern; ideally with the lived evidence and the lesson>

## Forward
<short closing — what's queued, what's next, any items promoted to backlog or memory>
```

See **Integration sequence — the four-step form** below for how Healer and Operator collaborate
on the content. *Both halves are required for completion* — the same discharge-completion
criterion from spine S8 (incomplete handoff = un-closed loop).

## Integration sequence — the four-step form

Discovered via two FEEDBACK cycles in case-03 retrospective (2026-05-28). Collaboration between
Healer and Operator on a reflection's content follows four ordered steps:

1. **Healer-led narrative summary + bullets.** The Healer drafts both narrative summary AND
   details bullets for each CSS section — grounding the Operator with substance before they
   engage their POV. *(Replaces the prior "stub-placeholder" approach: the placeholder form
   forced the Operator to write from blank page, raising cognitive load for what should be a
   substrate-felt engagement.)*
2. **Operator POV — *if any*.** The Operator provides their narrative for each section as it
   fits, including skipping sections where they have no POV ("no POV for X" is valid; sections
   where Healer-side is sufficient need no Operator narrative).
3. **Healer falsification of Operator POV — grounded on chat history.** Falsifiability runs both
   directions. The Operator can explicitly invoke this (*"falsify my observations"*) or the
   Healer applies by default. Each POV claim gets tested against chat-history evidence + verdict
   (survives / partially survives / falsified). Surviving claims feed integration; refined
   claims get re-surfaced.
4. **Healer integration → Operator final ratification.** Surviving Operator POV integrated into
   the reflection's *Narrative (Operator)* sections, with the falsification trail noted in
   italic asides. Operator ratifies the integrated final; status closure marker added.

*Provenance:* discovered iteratively via FEEDBACK during case-03 retrospective — first FEEDBACK
named the basic two-step (POV → ratification); second added the Agent-led grounding step
(Healer narrative + bullets first); the Healer's instinct to falsify the Operator POV before
integration completed the four steps. Each step earned its place via lived friction the prior
form created.

## Where — `ledger/reflections/<date>-<scope>.md`

Nested under `ledger/` (dev-discipline-adjacent). Filename pattern: `YYYY-MM-DD-<scope>.md`
(e.g., `2026-05-28-loop4-and-friction-session.md`).

Preserves the **4-bucket structure**; reflections are dev-log adjacent (decisions/dialectic also
live there).

## Sharing — two distinct upstream paths

A reflection can flow upstream in two directions, serving two distinct purposes.

### Path 1 — to the tended family (the patient): actionable-via-prescription

The Telos pulls toward shared learning (raises *family-wide* self-healing efficacy). The sanctioned
channel **already exists** — the patient's **Requirement Intake** template (`dz-cil/.github/ISSUE_TEMPLATE/requirement_intake.md`),
which the Healer files directly per the patient's README. Precedent: `dz-cil#1233` (audit-daemon
liveness/heartbeat — derived from case-1 + case-2 lessons; the patient's first reflection-derived
prescription from us).

So the discipline is:

- **Default — actionable items go via prescription.** A Practice Reflection's START bullets that
  are *externally-facing* (the patient could do them) → file each as a Requirement Intake (one
  prescription per actionable item, per the recommendation template). The reflection *itself*
  stays internal; only the actionable distillation crosses substrates. This is how `dz-cil#1233`
  came to be; the pattern is proven.
- **Pure reflection (non-actionable) stays internal.** Items that are observations about *our*
  practice (Healer-side disciplines, codification choices, governance) don't share — they shape
  *our* maturation (Pillar 5), not the patient's.
- **Whole-reflection sharing waits for a receiving channel.** If, over time, accumulated reflections
  show clear value the patient could consume *as reflections* (not as prescription distillations) —
  e.g., cross-substrate retrospective triangulation per spine S9 axis (c) — then file a
  Requirement Intake prescribing a *reflection-ingest channel* (`kb/reflections-from-tended/` or
  equivalent). Until that evidence accrues, the prescription-derived path serves the Telos with
  zero new patient-side overhead.

**Why this sequencing serves the Telos:** *prevention is the Telos's heart* — sharing actionable
prescriptions raises patient self-healing-efficacy directly (the audit-daemon-heartbeat rec is
exactly this). Whole-reflection sharing requires patient receiving-capability that doesn't yet
exist; building it before evidence-of-value would be force.

### Path 2 — to the parent form (the Dyad Practice): produce-as-we-are; the Dyad-Practice Dyad distills

The parent form (`github.com/pltrinh1122/the-dyad-practice`) accumulates lived practice from its
instances. A separate **Dyad-Practice Dyad** — instantiated by the Dyad-Practice Operator (the same
human as our Healer Operator, wearing a third Role) — organizes and distills cross-instance
contributions toward its own Telos:

> *Realizing the 1+1=3 of all Dyad practitioners from the contribution of all practitioners.*

**What this means for us:** *our reflections need no upstream-side curation.* The patient-domain
coupling (DZ-CIL references, case IDs, specific issue numbers) IS the evidence-of-fit — it's *how*
the form lands in a real instance. The Dyad-Practice Dyad does the abstraction across instances;
that's its own form-level work, not ours.

**Discipline for Path 2:** *focus purely on the form of our individual contribution* — produce
honest, falsifiability-clean, two-substrate-paired reflections; preserve our voice; don't anticipate
how cross-instance aggregation will use them. The contribution channel (subdirectory, format,
cadence) is the Dyad-Practice Dyad's call; we ship as-we-are when there's a reflection worth shipping.

The Dyad-Practice Operator is on the same human Substrate as the Healer Operator but a *different
Role* — that hat-distinction matters for ratification flows: the Dyad-Practice Dyad ratifies the
form; the Healer Operator ratifies us. Don't conflate.

## Cross-references

- [`healing-protocol-spine.md`](healing-protocol-spine.md) §S9 — the clinical analog. Practice
  Reflection is its non-clinical counterpart.
- `wards/case-*/retrospective.md` — the structural template the format mirrors.
- [`glossary.md`](glossary.md) — *Practice Reflection*, *Continue/Start/Stop (CSS)*, *natural rest
  point*.
- [`telos.md`](telos.md) — the falsifiability metric (recurrence-frequency↓) that reflections
  contribute to by surfacing what works.

## Falsifiability — when to revise

- **Orthogonality (proactive).** A Practice Reflection's items must not duplicate an existing
  ratified discipline or a case-retrospective lesson — surface only what's *new* from the session.
  Overlap with prior items → reference, don't restate.
- **Drift from format.** If reflections start skipping the two-substrate-paired structure (e.g.,
  Operator-narrative consistently missing) → the loop isn't closing; revisit either the trigger
  threshold or the substrate-pairing requirement.
- **Sharing-channel maturation.** When accumulated reflections show value the patient could consume
  *as reflections* (not as prescription distillations), file a Requirement Intake prescribing a
  reflection-ingest channel; on ratification, flip §Sharing accordingly. Until then,
  prescription-derived sharing is the only path.
- **Frequency mismatch.** If reflections become *frequent* (multiple per session) or *vanish* (no
  rest points trigger one for months) → the trigger is mis-tuned; revisit "natural rest point".

## Status / revision log

- **v0.2 — RATIFIED 2026-05-31** (Healer Operator approval). Added §"Retrospective scope — the
  inter-Retrospective span": a Retrospective (CSS unit) spans all activity since the last Retrospective;
  a forced/interrupt stop logs a stand-down but does not spawn its own Retrospective. Corrects the
  per-stop reading that fragmented the 2026-05-31 thread. Provenance: Operator [ALIGN].
- **v0.1 — RATIFIED 2026-05-28** (Healer Operator approval). Initial codification of the
  Practice-Reflection discipline. Provenance: [IDEATE] 2026-05-28 — "at natural rest points, we
  can benefit from a session reflection… then we can share with DZ-CIL for its own personal
  growth." Light falsification survived (form-canonical CSS; sharing-with-patient required a
  receiving mechanism, addressed via phased sequencing). Today's session itself supplies the
  first instance: `ledger/reflections/2026-05-28-loop4-and-friction-session.md`.
