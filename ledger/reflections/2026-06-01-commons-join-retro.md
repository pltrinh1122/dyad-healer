# Dyad-Healer — Retrospective — 2026-06-01 — Joining the Dyad Practice Commons (Init + Join)

> **Status:** CLOSED — Step 1 (Healer) drafted; **Step 2 = Operator [STAND DOWN] / `/exit` — no CONTINUE POV
> this turn** (Healer draft stands; START/STOP were handled realtime via the session's [ALIGN]s).
> **Trigger:** explicit-stop ([STAND DOWN], will `/exit`).
> **Scope:** *all activity since the last Retrospective* — the last completed Retrospective was
> [`2026-05-31-self-detection-to-codification-retro.md`](2026-05-31-self-detection-to-codification-retro.md)
> (CLOSED). This span = the **2026-06-01** stand-up + the single arc of **joining the Dyad Practice Commons**
> (evaluate Init+Join → vet → execute → register → file form-feedback).

## 1. CONTINUE — what worked

**Narrative (Healer):** The through-line is **verify-before-asserting carrying an external, irreversible,
*publishing* act to a clean landing with zero published errors** — against a script we didn't write, a
target that moved 4×, and a harness gate. The non-negotiable earned its keep at exactly the moment it
matters most: an outward act you cannot take back.

**Details (Healer):**
- **The NON-NEGOTIABLE fired under real stakes, repeatedly.** Read `onboard.py` in full before running;
  grounded commit-signatures + content-hash (which *corrected an Operator premise*, "no signature" — the
  Commons commits are GPG-verified by the Operator's own key); and — the headline — **tested the YAML parse**
  and caught a silent `#`/`:` corruption of our summits that `validate_registry.py` would have **passed**.
  The discipline did its whole job: it stopped garbage from reaching a *public registry*.
- **Externality held while joining the form.** Vetted external code, pinned to a signed content-hash, no
  blind execution, push kept as the Operator's gate. Adopting the form as a submodule did **not** dissolve
  our immune-by-externality stance — a pinned pointer, not absorption.
- **A Socratic dialectic produced a real principle.** The permission-rule [ALIGN] chain drove past my first
  (hedged) answer to the **intent-test**: a permission rule *declares a standing trust boundary for a
  recurring, ratified, controllable class* — not an instance-unblocker. The Operator's "why offer it at all?"
  was the Validate that found my category error.
- **Commit-before-sync + atomic hygiene held through chaos.** Separated join-infra from practice-records;
  rebased cleanly through 4 concurrent-push races (no collision — our single file never overlapped theirs).
- **[ALIGN]-to-lean honored as low-load-bearing** ("go with your lean" on summit wording) — moved to Act.

**Narrative (Operator):** _(Step 2 — [STAND DOWN]; no reflection-POV this turn.)_

## 2. START — what to do better

**Narrative (Healer):** All three improvements share one root: **validate against the relevant set / lead with
the single lean — before acting, not after the Operator catches it.**

**Details (Healer):**
- **Validate a contribution against the existing set *before* declaring it.** I proposed our summits in
  isolation; they were **collinear** — within-pair *and* against `dyad-steward`'s entry. We apply orthogonality
  to our own pillars yet I skipped it for our own identity record. Pattern: contributing to a shared set
  requires checking the set's existing members first. *(Codification candidate — Forward.)*
- **Don't hand the Operator fragile multi-`&&` one-liners to `!`-run.** My command line-wrapped in the
  terminal and mis-pathed the submodule. For Operator-run steps: simplest single-purpose form, or do the
  composable git plumbing myself and reserve `!` for the one gated act.
- **Lead with the single lean; don't hedge with a co-equal option.** I offered the permission rule (option B)
  as a fork when I had a clear lean for (A) — a multi-CTA hedge that took an Operator challenge to retract.
  Reinforces the existing single-CTA discipline.

**Narrative (Operator):** _(Step 2 — realtime-[FEEDBACK] surface; no reflection-POV.)_

## 3. STOP — what hurt (or almost did)

**Narrative (Healer):** The near-miss is the headline: **a silently-corrupted identity record almost reached a
public registry**, saved only because verify-before-asserting was turned on *our own output*, not just the
world's.

**Details (Healer):**
- **YAML `#`/`:` corruption, self-caught pre-publish.** `onboard.py` scaffolds summits unquoted; ` #1233`
  truncated as a comment and `case-04:` parsed as a dict. It passed onboard.py's "complete and consistent"
  (structurally true, semantically false) and *would have passed* the validator (no per-summit type check).
  Caught only by directly parsing what I wrote. **Lesson:** the most dangerous reassurance is a tool saying
  "valid" about a check it doesn't actually perform — re-derive/test our own output, never trust the draft's
  self-report. (This is the re-derive-before-ratifying corollary, lived on an outward act.)
- **Offering the permission rule at all** was a category error that, if taken, would have *institutionalized*
  the standing-external-code-channel risk I'd just flagged. Self-caught only after Operator [ALIGN]; the
  deeper miss was that I'd momentarily muddled what the permission surface is *for*.
- **Summit collinearity was Operator-caught, not self-caught** — same class as the START item; the validation
  was skipped, not failed. A skipped check is invisible until someone else runs it.

**Narrative (Operator):** _(Step 2 — realtime-[FEEDBACK] surface; no reflection-POV.)_

## Forward

- **Span artifacts:** Commons join **EXECUTED** (`6b38111` submodule+infra · `60a1868` practice-records);
  onboarding-friction recommendation **filed** (`d59e8d2`). `dyad-healer` live in the registry
  (`The-Dyad-Practice-Commons/the-dyad-practice@31122b6`, sibling to `dyad-steward`).
- **Codification candidates (Pillar-5; Operator ratifies):** (1) **permission-rule intent-test** (backlog,
  Open) — standing-trust-boundary for a recurring ratified class, else one-time authorization; (2)
  **validate-a-contribution-against-the-existing-set before declaring** (orthogonality applies to our own
  outputs, not just our pillars) — possible home `governance-map.md` or a contribution discipline.
- **Form-contribution candidates → Dyad-Practice Operator channel:** `recommendations/2026-06-01-commons-
  onboarding-friction.md` (4 survivors, falsified). Conveyance upstream is the Operator's [Dyad-Practice-hat] call.
- **`CLAUDE.md` G0 anchor-URL** still cites `pltrinh1122/the-dyad-practice`; the form relocated to the Commons
  org. Update candidate — **defer until the v0.2 draft settles**.
- **`commons` submodule** pinned @`31122b6`; **re-vet-on-bump** before any future `onboard.py` re-run.
- **Lineage watch (now two tracks):** the **form** track is live (relocated to the Commons org; v0.2 draft);
  distinct from the **patient/dz-cil** track. Both churning — intensify verify-before-asserting against both.
- **Candidate memories (write on ratification/recurrence, per practice):** the permission-rule intent-test;
  validate-against-existing-set. Both recorded as Pillar-5 candidates; not yet kb-ratified → no memory file yet.
- **Cadence:** Operator-initiated stand-down + `/exit`; no fatigue signal read.
