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

### Completion before `/exit` (explicit-stop discipline)
An explicit-stop reflection must be **committed to the durable record before `/exit`**:
1. Healer drafts the reflection (Healer-half details + Operator-narrative placeholders).
2. Healer commits the draft (closes the commit-before-sync gap; preserves work if `/exit` interrupts).
3. Operator either *fills* the narrative or *ratifies-as-is*.
4. Healer commits the closure (status: complete, two-substrate-paired).
5. Then `/exit`.

This sequencing ensures the reflection survives the conversation. Skipping step 2 (uncommitted draft
+ `/exit`) loses the reflection — the divergence-gap pattern from the parallel-fork lesson applies.

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

The Healer drafts details + stubs the Operator-narrative placeholders. The Operator either fills
in their narrative or ratifies-as-is. *Both halves are required for completion* — the same
discharge-completion criterion from spine S8 (incomplete handoff = un-closed loop).

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

- **v0.1 — RATIFIED 2026-05-28** (Healer Operator approval). Initial codification of the
  Practice-Reflection discipline. Provenance: [IDEATE] 2026-05-28 — "at natural rest points, we
  can benefit from a session reflection… then we can share with DZ-CIL for its own personal
  growth." Light falsification survived (form-canonical CSS; sharing-with-patient required a
  receiving mechanism, addressed via phased sequencing). Today's session itself supplies the
  first instance: `ledger/reflections/2026-05-28-loop4-and-friction-session.md`.
