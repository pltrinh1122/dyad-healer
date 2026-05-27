# Healing Ward — Lessons for Codification

> **Audience:** Frontier Agent · **Use:** the Healer's *falsifiable recommendations* for
> codification (the Agent ratifies / modifies / rejects) · **Codification source:** **YES — the
> only file in this ward that is one.**

**This file is SOURCE: requirements, observations, and evidence — NOT implementation.** Per the
source/ratifier boundary and *point-don't-fix*, the Agent designs the specific Dao artifacts
(files, names, mechanisms, wording) through its own governed, falsifiable loop. Where a specific
path, string, command, or commit appears below it is **evidence of what happened**, not a
prescription for what to build. **★ = live-revival findings not yet in the patient retros.**

**Authority:** ratifying anything into the Dao is the **Frontier Agent's** sole responsibility. The
Healer's authority is bounded to the state-of-exception (the cut) and does **not** extend here.
So every item below is a **falsifiable recommendation** the Frontier Agent may ratify, modify, or
reject through its governed loop — **not a mandate**. The Healer proposes; the Frontier Agent
disposes. Binding Dao status is conferred by *its* ratification, never asserted by the Healer.

## A. Doctrine (→ WHY)
- **Healer/Resuscitator role + recovery gap.** SG-0005 self-healing presumes a *running* loop; a
  loop seized in its own boot layer cannot self-heal → it needs an agent external to it (the latent
  Auditor of the Dual-Agent Paradigm, WHAT-0001 §1.2).
- **Healing is an Operator+Healer dyad over the patient (a triad).** The Healer cannot
  self-instantiate; the Operator summons and steers.
- **Core doctrine.** The Healing *process* is telic-Dao-aligned (passes HOW-0006) *because* it
  restores an inoperative operational Dao — a bounded **state of exception**. Its steps may violate
  operational invariants (editing `GEMINI.md` directly, acting outside the loop) only because that
  machinery is down. Kept non-vacuous by three bounds: the **triage gate** (falsifiable activation),
  the **source/ratifier boundary** (no self-ratification), **retrospective accountability**.

## B. Protocol (→ HOW)
1. **Triage gate** — a Healer is warranted only when the SPAO loop *itself* is seized; not for
   routine faults the running Agent handles.
2. **Operator's procedural role** — detect → halt → instantiate → steer → ratify → authorize →
   co-observe. Perceptual detection stays human; telemetry augments it.
3. **Healer discipline** — falsify each hypothesis → walk back to PR-zero (trigger vs origin) →
   minimum wu-wei cut → instrument before reviving → point, don't fix.
4. **Framing, not channel** ★ — an *imperative* loops in ANY channel re-read before its consumption
   point (proven: the beacon directive in the ROM looped 42×, reproducing PR-zero). Handoffs must be
   **passive + idempotent + observed**. The re-read ROM carries only pure-passive *state*;
   action-triggers are Operator-delivered and idempotent (self-mark done).
5. **No self-emitted boot beacon** ★ — a process cannot self-confirm liveness, and self-emit is
   fragile on stdout. Confirm boot via the Operator's one-shot prompt or natural progress events.
6. **Sponge count before sew-up** — reconcile the patient's `git status` (+`--ignored`) vs the
   intended delta; remove Healer residue; never touch the patient's pre-existing state. ★ Note: the
   patient's own `node sync` may discard uncommitted Healer edits (it swept the `GEMINI.md`
   injection here) — verify, don't rely on it.
7. **Observe durable artifacts, not phase churn** ★ — health = commits / node-state changes / a PR
   over a *longer window*, not short-term SPAO phase patterns (too granular; they false-alarm during
   error-recovery).
8. **Genuine loop vs self-resolving grind** ★ — *genuine loops* (a halt was required): the original
   recursion (#948) and the iatrogenic beacon. *Self-resolving grinds* (looked loopy, recovered
   unaided): stale-lock retry, `gh` exit-4, commit/switch/WIP errors. Signatures — genuine loop =
   identical repetition OR zero durable-artifact change over a long window; grind = varied errors
   that keep producing new durable artifacts.
9. **Dual observation: flag *and* vouch** ★ — either party may halt; AND the Operator (who sees the
   Agent's reasoning) may *vouch* to let it grind. The Operator's terminal view beat the Healer's
   telemetry-only read; a telemetry alarm must not override a vouched, progressing recovery.
10. **Graduated recovery cadence (crawl → walk → run)** ★ — the post-revival patient is fragile.
    Crawl = HITL after every step; walk = HITL at node boundaries; run = autonomy + merge gate.
    Graduate as loop-free steps accrue. Deliver Operator-side + idempotent (per B4), never as a
    re-read imperative.
11. **Measured Healer↔Operator comms** ★ — tag recommendations by reversibility: emergency-stop
    (halt/exit) = pre-authorized reflex (safe + time-critical); constructive/irreversible = require
    Operator deliberation. (EVT-001.)
12. **Resume mode** ★ — `-c` on a *seized/poisoned* context is anti-Ziran (continuity lives in
    durable artifacts, not the conversation); `-c` on a *healthy mid-task* session is correct.
13. **Intervention threshold — default to bare `continue`** ★ — let the patient self-heal; observe
    and flag-on-evidence, do not pre-empt. Provide *more* than a bare `continue` only when: **(a)**
    the next step is irreversible / high-blast (executing-with-care) — intervene, then back-fill the
    ward; **(b)** the patient cannot access the source — hand it over; **(c)** the **ward gave
    insufficient context** for the patient to self-heal. For (c) the response is to **enrich the
    ward (the source)** — durable, ratifiable — then a bare `continue` so the patient re-reads and
    heals; *not* an ad-hoc live directive (over-direction: ephemeral, un-ratified, bypasses the
    source). Diagnostic duty: distinguish **source-insufficiency** (fix the ward) from
    **patient-error** (flag-on-evidence) from the patient's *actual output*, not anticipation.

## C. Recovery-state hazards ★ (fold into HOW)
- **Stale active-node lock** — a seizure leaves the pre-seizure node marked active (Node 1156).
  Resolve it (complete/release per Invariant 14) before planning new nodes, else `plan_start` fails
  "State Dissonance… release the lock first" and the Agent retry-grinds.
- **Stale root after sync** — `node sync` can land the root *behind* `origin/main` (here HEAD stayed
  at `285272f`, missing the merged fix `bea91b3`). The next proper sync pulls it → `GEMINI.md`
  changes → a *correct* ROM-drift restart. Anticipate it; never commit a stale `GEMINI.md`.
- **PR↔Node conflation** — the Agent and `bin/status` labeled PR **#1169** as "#1165" (the node/issue
  id). Always merge by the real PR number; `bin/status` mislabeling PRs by node-id is a candidate fix.
- **Invariant-18 in reflect** — the Agent wrote `retro-1165.md` to the repo *root* while in a
  worktree (orphaned). Reflect's retro-path handling is a candidate residual fix.

## D. Capabilities the Dao must gain (requirements — the Agent designs the implementation)
- A **reusable Healer-instantiation mechanism** that instantiates the *disposition* (role +
  discipline) parameterized by the presenting symptom — NOT a replay of this specific cure.
  *(Name, location, format: Agent's choice.)*
- A **Healing-Protocol Evaluation** capability that is, by requirement: post-healing only (never
  during treatment), controlled, run against a clean baseline, and repeatable on the *cured*
  system. *(Design: Agent's choice.)*
- A **durable Healer case-file outside the patient** ("the Ward") for reflection + handoff,
  preserving the sponge-count. ★ *(Realized here as `/tmp/ward-<id>/`; whether/how to formalize:
  Agent's choice.)*

## E. Residual remedies (handed to the Agent — not traps)
- Loops 2–4 from the original `GEMINI.md` analysis (Inv 3↔19 contradiction; daemon accumulation on
  restart; retro cascade) + filesystem debris (`--show-common-toplevel`, stray locks). We
  identified; the Agent chooses remedies via its own dialectic.

## F. Containment — recommendations so codifying doesn't leak Dao-breaking into the general Dao ★
The Healer's authority to break operational invariants is valid ONLY inside the bounded
state-of-exception (B1 triage gate). The governed merge channel *reviews* the codification but does
not *contain* its content. The Healer therefore **recommends** the properties below (each
falsifiable; the **Frontier Agent ratifies, modifies, or rejects** — and chooses every mechanism).
The risk if ignored is real (the exception bleeding into the general Dao), so the Healer recommends
the Frontier Agent ratify these as binding — but that is *its* call:
1. **Dormancy** — recommend the protocol not enter a normal Agent's baseline/boot context; loadable
   only when the triage gate is active. *Falsifiable test: a normal Agent boot does not ingest it.*
   (Placement in the always-loaded Dao would itself be the imprint.)
2. **Inline-bound exception** — recommend every Dao-breaking step carry its triage precondition
   *with it*, not in a separable section a reader can skip.
3. **Reflective rationale, minimal gated steps** — recommend the rationale live in a
   reflective/immune primitive; the prescriptive steps stay minimal and triage-gated; never general
   license ("break the Dao if it helps" is the HOW-0006 rationalization).
4. **kb/ purity** — recommend no raw git/gh command strings or forbidden patterns enter `kb/`
   (Inv 9); operational specifics remain in this ward.
5. **Self-declared scope** — recommend each Healing-Protocol artifact declare that it is a
   state-of-exception primitive, not general operating Dao.
