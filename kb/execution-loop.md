# Dyad-Healer — Execution Loop (v0.1, living)

> **Audience:** Healer + Healer Operator · **Use:** the *temporal cadence* a task is paced through —
> distinct from the [5 modes](modes-of-operation.md) (planning map) and the 3 postures (operational state).
> **Status: HEALER PRACTICE** — Operator-ratified (by approval) 2026-05-27. Living; falsifiable.
> Converged via dialectic 2026-05-27 → [ledger §"SPAOR adopted…"](../ledger/ledger.md).

## The decision
Adopt **SPAOR** — *Sense · Plan · Act · Observe · Reflect* — as the Dyad-Healer's general execution
loop, taking the **form, not the patient's wiring** (no Nodes/Meta-Graph/Sluice-Gate dependency;
preserves our externality). SPAOR is canonical in DZ-CIL (`dz-cil/kb/GLOSSARY.md` "SPAOR (Meta-Loop)"):
the *order matters* — the prior shorthand "SPAO" omitted Reflect and was corrected; the same trap
catches us as "SPOAR" transpositions. Guard the spelling and the order.

## Relation to The Dyad Practice — *complementary, not aligned*
SPAOR and the Dyad Practice operate on **orthogonal axes**:
- The Dyad Practice = *epistemic / manner* form (Generate/Validate, 1+1=3). Verified silent on
  execution topology (no serial/parallel/sequence/schedule terms across its README).
- SPAOR = *execution / temporal* loop. It populates the dimension the form intentionally leaves open.

So SPAOR doesn't replace or compete with the Dyad manner — it *gates* it.

## One grounding loop — the phases hold the manner
SPAOR's Sense / Observe / Reflect are **epistemic beats** (the Dyad Practice's Validate family).
Adopting SPAOR does **not** instantiate a second grounding loop alongside our existing manner
(*read the stock → work with the grain → reach the fit → still test it* — Dyad Practice README, line 80).
The phases are *where* the manner runs:

| SPAOR phase | What the Dyad manner does in it |
|---|---|
| **Sense** | Read the stock — ground (the NON-NEGOTIABLE *verify-before-asserting*, now gated at entry). |
| **Plan** | Choose the minimum-force move (work with the grain). |
| **Act** | Execute. |
| **Observe** | Test against reality (the fit gets tested). |
| **Reflect** | Falsify · keep what survives · codify (write the fix down so it can't return). |

One loop, given a skeleton by the phases. No duplicate.

## Per-phase enrichment — each phase is a nested dyadic cycle
The summary table above maps each phase to the manner it holds; this section opens that up one level.
The manner inside a phase runs as **a series of nested dyadic cycles, each itself a small SPAOR within
the macro SPAOR** (the form's framing, `commons/AGENT.md` "A + O — walk dimensions as nested dyadic
cycles"). SPAOR is therefore *self-similar*: the dyadic cycle (Generate → Validate → ratified grain) is
the atom, a **series** of those cycles is what flows through a phase, and SPAOR is the recursive
skeleton they compose into. Each phase below carries two blocks — the **nested dyadic cycle** that enacts it, and a
**falsifiability hook** (what would show the phase was *not* correctly executed).

### Sense
**Nested dyadic cycle.** *Generate (Agent):* read the durable record (ledger / backlog / active ward)
and run the live checks (git, files, patient state) — grounding *before* asserting (the NON-NEGOTIABLE,
gated at entry); surface the stock-reading to the Operator *with provenance* (what is + where it was
grounded). *Validate (dyad):* the Operator tests the read against intent and known state; friction
surfaces what was inferred-not-checked or asserted-from-memory. *The 1+1=3:* the Agent supplies grounded
facts it can fetch at speed; the Operator supplies the intent-frame + the "falsify that" trigger —
together a *situated* floor neither half had alone. *Grain forward:* the ratified stock-reading is the
floor Plan builds on.
**Falsifiability hook.** Sense was botched if a later phase trips on a fact that was
assertable-but-unverified here — a stale SHA, a tool assumed-present, a state inferred not checked (the
standing verify-before-asserting slip). *Divergence test:* if a parallel fork ran Sense simultaneously,
both forks ground on the **same durable record** (single-home-per-fact + resume-mode discipline), so two
independent Senses converge; divergence is caught because each grounds in the file, not its private
context (lived: the 2026-05-28 fork's `git status` grounding caught the near-clobber).

### Plan
**Nested dyadic cycle.** *Generate (Agent):* from the ratified stock-reading, generate the minimum-force
move that goes with the grain (catalog: Composition / Elicitation / Reframing); state **one** lean per
fork. *Validate (dyad):* the Operator falsifies the move against intent + cost — is it truly
minimum-force or over-built; "go lean" = ratify the Healer's lean. *The 1+1=3:* the Agent supplies the
option-space + a grounded recommendation; the Operator supplies the load-bearing judgment +
grain-direction — a move neither had alone. *Grain forward:* the ratified move is what Act executes.
**Falsifiability hook.** Plan was botched if Act must stop and re-decide scope mid-execution (structure
wasn't aligned before drafting), or if the "minimum-force" move proves over-built (a whole section where
a clause would do). *Divergence test:* both forks plan against the same ratified Sense-floor and surface
the move *before* acting → divergent plans are caught at the propose-gate, not after both have acted.

### Act
**Nested dyadic cycle.** *Generate (Agent):* execute the ratified move; commit at the smallest
meaningful unit (commit-before-sync); the Agent acts, the Operator does not drive. *Validate (dyad):*
minimal-necessary Operator input — one seed then observe (every extra driving input is a confounding
variable); input reserved for emergency-halt or mid-flight [IDEATE] / [FEEDBACK]. *The 1+1=3:* least
here — Act is the most Agent-weighted phase; the +1 is the discipline of executing *exactly* the
ratified move, no scope-drift. *Grain forward:* the executed artifact + its commits are what Observe
tests.
**Falsifiability hook.** Act was botched if it drifts from the ratified Plan (scope-creep, an unratified
change bundled in) or leaves work uncommitted across a sync boundary. *Divergence test:*
commit-before-sync at sub-step granularity closes the gap *before* it forms — lived: the 2026-05-28
fork's near-clobber was exactly the uncommitted-Act gap.

### Observe
**Nested dyadic cycle.** *Generate (Agent):* test the fit against reality — run the check, read the
result, **don't assert success from the tool's own report** (test the artifact, not the tool's claim).
*Validate (dyad):* the dyad triangulates the result against intent; friction surfaces a fit that "lands
on paper" but doesn't hold (fluent output can be the most confidently wrong). *The 1+1=3:* the Agent
supplies the observation; the Operator supplies the matches-intent judgment — a verdict neither had
alone. *Grain forward:* the tested verdict is what Reflect falsifies + codifies.
**Falsifiability hook.** Observe was botched if a "pass" was read from the tool's self-report rather than
the artifact (grounding gated-not-ingrained: trusting git's claim vs. testing the state), or a
fluent-but-wrong fit slipped through untested. *Divergence test:* both ground the observation in the
artifact / durable state, not private context → two observations of the same fit converge; divergence
flags a fit one fork tested and the other only asserted.

### Reflect
**Nested dyadic cycle.** *Generate (Agent):* falsify the cycle (what survived / what didn't); draft the
codification (write the fix down so it can't return) + the three beats (Continue / Start / Stop).
*Validate (dyad):* the Operator gives reflection-POV on **CONTINUE** (Start / Stop handled realtime via
[FEEDBACK]); ratifies what enters the record (source-not-ratifier). *The 1+1=3:* the Agent supplies the
drafted lesson + provenance; the Operator supplies the keep/drop POV + lived experience the Agent can't
see — a practice-change neither had alone. *Grain forward:* ratified codification updates `kb/` (+
anchor-sync to `CLAUDE.md`); the practice compounds (rising efficacy, per Telos).
**Falsifiability hook.** Reflect was botched if a lesson stays in chat and never reaches the durable
record (continuity lost — the premature-stand-down failure, case-02), or if codification is
asserted-done without the cycle-close (anchor-sync / glossary / form-alignment) actually run.
*Divergence test:* both write to the same durable record → the fork that codifies *durably* wins over
the one that only reflected in conversation; the record, not the chat, is where the practice lives.

## Why we need it (the surviving +1 of the dialectic)
Our manner is a *manner/spirit* — explicitly **un-gated**. CLAUDE.md records that *verify-before-
asserting* "fails first under long context"; the standing failure mode is the discipline silently
slipping under load. SPAOR's named phases **gate** the epistemic beats so they can't be skipped under
pressure. That's the surviving reason to adopt: it doesn't add a doctrine, it **enforces the one we
already have**. (DZ-CIL's own SPAO→SPAOR correction restored Reflect for the same reason.)

## Posture integration
| Posture | Execution loop |
|---|---|
| **Exception** *(a patient is seized & under our care)* | The **EMS spine** S0–S9 (urgency-shaped; its own cadence) → [`healing-protocol-spine.md`](healing-protocol-spine.md). |
| **Building** *(writing/running code)* | **SPAOR** — phase-gated through the manner. |
| **Authoring / research** *(default)* | **SPAOR** — same, craft-pace. |

The spine and SPAOR don't collide — they cover disjoint postures.

## Falsifiability — when to revise or abandon
SPAOR-as-our-loop survives only while it earns its keep. Revise / drop it if:
- The phase-gating fails to catch the un-gated-manner slips (epistemic discipline still slips under
  load → SPAOR isn't enforcing).
- It imports patient-domain coupling we can't undo (we drift from form to wiring).
- A second grounding loop emerges in practice despite the mapping (drift between manner and phases).

## Cross-references
- Dialectic trail (thesis → rebuttal → concession → fit) → [ledger §"SPAOR adopted…"](../ledger/ledger.md).
- The 5 modes (planning map; orthogonal to this loop): [modes-of-operation.md](modes-of-operation.md).
- The 3 postures (operational state; the gate that selects which loop): CLAUDE.md.
- The rescue-posture loop (interlocking case): [healing-protocol-spine.md](healing-protocol-spine.md).
- The form (epistemic axis SPAOR complements): [The Dyad Practice](https://github.com/pltrinh1122/the-dyad-practice).
