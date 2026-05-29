# Dyad-Healer — Practice Reflection — 2026-05-29 — Rescue + tooling working session

> **Status:** STEP-4 INTEGRATED — Operator POV was provided **real-time** (the session's
> [FEEDBACK]/[ALIGN]/[RETROSPECTIVE NOTE]); **Step-3 falsification = faithful-attribution to chat history**
> (the POV *was* the corrective position the Healer conceded to in-stream, so it survives by construction).
> **RATIFIED 2026-05-29 by Healer Operator (Step 5 close).**
> **Trigger:** explicit-stop (Operator-declared pre-stand-down; §When always-triggers).
> **Scope:** the 2026-05-29 working session *after* the morning stand-up — Pillar-2 filing (#1393) ·
> first Pillar-3 tool (`bin/git.sh`) + permission · the case-04 rescue through discharge.
> **Orthogonality:** the case-04 *clinical* CSS lives in `wards/case-04-self-stabilized-seizure/ward.md`
> §S9 — **referenced, not restated** here; this captures the *session-level* arc + cross-cutting patterns
> + the non-rescue work, per the §Falsifiability orthogonality rule.

## 1. CONTINUE — what worked

**Narrative (Healer):** The through-line was **verify-before-asserting earning its keep at time-of-use,
all day** — it repeatedly converted a confident wrong move into a grounded right one, across both the
non-rescue and rescue work. The second through-line was **the dyad working through friction rather than
around it**: nearly every artifact this session was reshaped by an Operator FEEDBACK/ALIGN/IDEATE and came
out better for it.

**Details (Healer):**
- **verify-before-asserting, time-of-use** — dropped #1393's already-fixed label defect (patient had
  self-corrected); caught the `settings.json` heredoc/wrap malformation before it silently broke the
  permission; the case-04 audits (suppression band-aid · "merged" while root still seized · "pure"
  overstatement). The non-negotiable did real work.
- **concerns-not-directives → enable-via-concerns** (new memory) — surfacing causes/invariants not fixes
  let the patient out-heal the Healer's own instinct (the "+1" from the patient's context). [ref case-04 S9]
- **Dyadic friction-refinement** — intake reframed to ailment-only; `bin/git.sh` holding-structure chosen
  via a 3-way dialectical synthesis; concerns-not-to-dos; the direct-to-main = *chat-is-the-gate*
  falsification; substrate-wrapper-as-grounding-grain. Friction *established* the grain each time.
- **First Pillar-3 tool, from genuine friction** — `bin/git.sh` (declared-policy, fail-closed,
  permission-gated) emerged only when recurring push-friction justified it; tooling-when-friction-justifies
  held, and it dogfooded cleanly the rest of the session.

**Narrative (Operator):** *(Integrated from the real-time [RETROSPECTIVE NOTE] + the session's [ALIGN]/
[IDEATE] "Falsify" cadence.)* The standout recognition: delight that the Healer Telos — *enabling*
self-healing — not only met but **beat** expectation, because the dyad supplied **causes/invariants, not
directives**, so Frontier's curative "+1" came from *its own context* rather than the Healer's expertise.
The Operator also drove refinement through **falsification dialectics**, not directives — the dyad earning
the grain *through* friction, not around it.

## 2. START — what to do better

**Narrative (Healer):** One improvement dominates: a **pre-delivery check on the *form* of any
recipient-facing artifact** — because the same drift recurred in two different shapes this session.

**Details (Healer):**
- **Wound-vs-suture / over-prescription is a SESSION-level pattern, not isolated** — it appeared in *both*
  the #1393 intake ("too prescriptive" → ailment-only) *and* the case-04 patient orient ("to-dos not
  concerns" → concerns-list). Pre-delivery check: *"causes/concerns (wound) or directives (suture)? does it
  make the recipient self-derive, or execute my fix?"*
- **Posture-discipline at boundaries** — don't let maturation/retrospection pull focus *during* treatment
  (the +1 essay surfaced at S7, mid-rescue; S9 is post-discharge). Hold Exception posture until the patient
  is clear.

**Narrative (Operator):** *(From the real-time [FEEDBACK] on the #1393 intake and the case-04 orient.)*
The consistent push: **focus on the ailment / violated invariant, not the solution** — *"a list of concerns
Frontier needs to address, not a list of to-dos"*; Frontier figures out or falsifies the cure in its own
context. And: **keep the Healing Protocol clear; don't allow distraction** while the patient is under care.

## 3. STOP — what hurt (or almost did)

**Narrative (Healer):** The deepest recurring failure mode is **anchoring on a remembered template or
hardened grain instead of grounding on live evidence** — it surfaced twice today, both times on a
capability/state claim, both caught by the Operator.

**Details (Healer):**
- **Stale-anchor over live evidence (×2)** — asserted "no local dz-cil clone" (had only checked `/dzw/`;
  it was at `/git_repos/`); asserted "you cannot self-detect" (the spine's S0/S8 template) while the
  patient's daemon was firing self-detection *in the same paste*. Both are verify-before-asserting misses
  on the exact thing the discipline guards. Guard hardest here.
- **Frontier-substrate leak** — imported the patient's `reflect`/`merge`/`node sync` primitives into the
  Healer's protocol framing and re-issued patient-facing instructions; needed Operator correction. The
  Healer has its own protocol + vocabulary; don't narrate the patient's mechanism.

**Narrative (Operator):** *(From real-time [FEEDBACK].)* The Operator named the anti-pattern directly: the
"cannot self-detect" assertion was *"patently incorrect"* — the Healer was **anchoring on a template or an
unintended grain (belief)** instead of the evidence (Frontier self-identified the seizure; its guards work),
and proposed the self-detectability *grading* as the fix. And: **"Frontier's substrate and discipline is
leaking into the Healer"** — importing the patient's primitives + re-issuing instructions instead of
addressing the Healer Operator in Healer terms.

## Forward

- **Codified this session:** memories — single-CTA · CTA-at-top · automate-recurring-manual-friction ·
  enable-via-concerns · frontier-dyad-lineage-alignment (project). Artifacts — `bin/git.sh` v0.1 + checked-in
  permission; dz-cil**#1393** filed (two ROM-integrity violations, ailment-only).
- **Queued maturation** (this reflection + case-04 S9; PROPOSED, Operator ratifies — better fresh):
  spine S0/S7/S8 self-detectability grading · `kb/seizure-taxonomy.md` (detectability axis +
  iatrogenic-deprecation-cascade class) · enable-via-concerns → kb codification · **Pillar-2 prevention
  prescription** (corpus-harmonization debt · guard substring/`.venv` bug · **#1393-V2 priority↑**, it
  disabled the patient's auditor live).
- **Cadence:** long, intense session; before 5 PM Pacific; sustained-workday boundary likely passed;
  case-04 discharge = natural closure → stand-down recommended post-reflection.
