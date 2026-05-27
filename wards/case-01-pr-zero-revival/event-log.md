# Healing Ward — Event Log (dyad interactions & operational decisions)

> **Audience:** Healer + Operator (the dyad) · **Use:** objective event record + the Healer's
> proposals · **Codification source:** **NO** — proposals reach the Dao only via
> `lessons-for-codification.md`; do not codify from this file.

Distinct from `timeline.md` (clinical procedure). This logs Healer↔Operator interaction events
and the reflections they prompt.

---

## EVT-001 — Operator reflex-executed the Healer's `/exit` without validation
**When:** Revival attempt #1, iatrogenic beacon loop (~02:25 UTC era).
**What:** The moment the Operator saw the Healer's `🛑 HALT — /exit` recommendation, they executed
`/exit` **immediately, without any Operator-side validation or deliberation.**
**Operator's stated rationale:** timing is critical during a seizure; acting fast avoids greater
*compounded* damage (every extra second = more loop iterations / API hammering / state churn).
**Outcome:** Correct call — the runaway beacon loop was halted promptly.

**Reflection (→ codify a measured Healer↔Operator communication protocol):**
- A **HALT / emergency-stop is the one action that *should* be reflexive** — it is safe
  (reversible: you can always restart) and time-critical (delay compounds damage). Reflexive
  execution here was right, not a lapse.
- The risk the Operator is flagging: reflexively executing *any* Healer recommendation is unsafe if
  the recommendation were **constructive or irreversible** (delete, force-push, schema change).
- **Proposed protocol:** classify Healer recommendations by reversibility / blast radius:
  - **Emergency-stop (halt/exit):** pre-authorized, execute on sight, no validation.
  - **Constructive / irreversible:** require Operator deliberation before execution.
  - The **Healer must tag** each recommendation with its class (e.g. `🛑 HALT — safe, act now`
    vs `PROPOSED — review before executing`) so the Operator knows which reflex applies.
- Net: keep the fast halt reflex; add a deliberation gate for everything constructive.

---

## EVT-002 — Operator proposes graduated recovery cadence ("crawl, walk, run")
**When:** Before revival attempt #2 completion / resume decision (~02:40 UTC).
**What:** Rather than resume the patient "full-blast" (autonomous through the whole self-heal),
the Operator proposes giving the patient a **step-by-step** imperative — advance incrementally.
**Why it's sound:** the post-revival patient is fragile (it just survived three loops). Graduated
HITL checkpoints after each step limit blast radius and give the dyad a gate to observe/halt
*between* steps. The two genuine loops (recursion, iatrogenic beacon) and the self-resolving
error-retry grind would all have surfaced at *step 1* under crawl-mode instead of after 42 beacons
/ 20 gh calls.
**Framing constraint (hard-won lesson):** the step-by-step instruction must be **Operator-delivered
and idempotent**, NOT a re-read-ROM imperative (that is exactly what caused the beacon loop). Each
step self-marks done; "if already complete, say so and stop — do not repeat."
**Tradeoff:** crawl-mode trades velocity (more HITL turns; some SG-0003/SG-0004 friction) for safety.
During the fragile post-revival window, safety wins; graduate to run-mode as confidence builds.

---

## EVT-003 — PR↔Node number conflation caught at the merge gate
**When:** Node 1165 reflect complete (~02:47 UTC).
**What:** Node 1165 self-heal completed: GEMINI.md §1.1 fixed (overlay-only + `(Workspace Mode)`
marker-abort guard — a sound closure of PR-zero), branch pushed, **PR #1169 OPEN**, patient halted
at the HARD HITL merge gate. But the Agent's summary **and** `bin/status` both labeled it "PR
#1165" — conflating the Node/issue ID (1165) with the actual PR number (#1169). `gh pr view 1165`
→ "not a PullRequest"; #1169 is the PR.
**Catch:** Healer dual-observation (gh) caught the wrong number before a mis-merge. Reinforces
retro-conflation-1142 / WHY-1143 — the conflation persists, and **`bin/status` mislabels open PRs
by node id** (a candidate residual fix).
**Also noted:** the Agent resolved its commit exit-1 ("branch ahead, nothing to commit, tree
clean") via `./bin/git reset --mixed origin/main` then re-ran reflect — a state-mutating recovery
that worked. Confirms lesson B7 (durable-artifact progress, not error-reaction): the exit-1 was a
step-over, not a loop.
**Healer QA verdict:** fix is sound — recommend merging **#1169**.

---

## EVT-004 — Merge landed; patient self-cleaned and synced
**When:** ~02:50 UTC.
**What:** Operator merged PR **#1169** → `origin/main` (`bea91b3`) — **PR-zero durably fixed**. On
`continue`, the patient's `node sync` failed twice then **self-recovered**: `git checkout --
GEMINI.md frontier_state.*` (which **auto-swept the Healer's uncommitted injection block**),
`git worktree remove --force`, `git branch -D node/1165…`, then a clean re-sync (Active Node: None,
0 PRs).
**Findings:**
- The patient's own sync **swept the Healer's GEMINI.md footprint** — sponge-count partially
  self-completed (verify, don't rely — lesson B6).
- **Stale-root hazard:** the sync left the root one commit *behind* `origin/main` (HEAD `285272f`,
  missing `bea91b3`); the next proper sync will pull it → a correct ROM-drift restart (lesson C).
- The switch/WIP-violation errors were **self-resolving grinds, not loops** — the Healer withheld
  the alarm and checked durable artifacts, which confirmed progress (lessons B7/B8; flag-and-vouch).

---

## EVT-005 — Patient discharged; Healer stood down
**When:** session close, after Node 1166 merged (PR #1171) and the post-merge sync closed clean.
**What:** The cure was proven on a **real restart** — post-1166-merge the stale-root carried the
1165 §1.1 fix forward → a correct ROM-drift restart (Hazard C); the patient restarted on the fixed
ROM and **booted clean (no reload loop)**. Discharge delivered as **two correctly-addressed
messages**: Healer→Agent (operate + stay observable; you cannot self-detect a seizure) and
Healer→Operator (the relapse watch + summon authority). Healer watchdog stopped; standing watch
handed to the Operator + the codified protocol's triage/relapse criteria.
**Key correction (self-reference applied to the discharge):** relapse **detection** and Healer
**summoning** are the **Operator's** role, not the Agent's — a seized agent can neither see its
seizure nor summon help; the Agent's only relapse role is to **stay observable**.
**Content routing (the discharge messages are channel ephemera; not archived verbatim):**
- Disposition → `chart.md` (done).
- The discharge *event* + this correction → this entry.
- Relapse criteria + the agent/operator discharge **structure** → the codified protocol (triage
  gate + Operator role + a reusable discharge template), **queued for a later cycle** (1166 source
  frozen). These stay falsifiable in the protocol rather than ossified as a transcript.
