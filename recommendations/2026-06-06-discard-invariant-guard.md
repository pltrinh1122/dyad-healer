# Healer → Patient Recommendation (backlog_issue intake) — Discard Invariant Guard

> **Source:** Dyad-Healer (external observer). **Delivery:** the Frontier Operator files this on the
> patient repo — the Healer never opens issues directly. **Tier:** file at *intake* (`backlog_issue`);
> the patient authors its own `node_contract` on acceptance.
> **Point-don't-fix:** Goal + Changes describe the *wound and direction* + the *invariant to mechanize* —
> never the suture. **Label on filing:** `external-recommendation` · `from-dyad-healer` · `prevention`.
> *Suggested path-mapping:* hardening of `kernel/daemon_node.py` sync path.
>
> **Form note (prescription-as-guard):** this rec deliberately delivers a *deterministic invariant +
> steering-vector*, not a prose rule. Rationale: a remembered/prose invariant degrades under context-
> amnesia — which is precisely how #1793 persisted (cairn `WHY-0001` cybernetic-steering; `hard-guardrails`).

## Goal
`sync_and_clean_node` runs `git switch origin/main --detach --discard-changes`
(`kernel/daemon_node.py:78`, live on origin/main), which **silently discards uncommitted tracked edits**
— including local fixes to `artifacts/frontier_state.yml`. This was the engine of the #1793 ghost-loop
(Healer ward `case-05`): the agent repeatedly tried to repair state locally and every `sync` wiped the
repair, with no signal. The patient has since synthesized the **Discard Invariant** — but **only as prose**
in `artifacts/audit/retro-1793-ghost-loop.md`; no mechanical enforcement exists. The gap: *the one
invariant whose violation cost 17h is held in the same memory-bound form that failed.* Why it matters:
prose self-rules degrade exactly when load is highest (mid-loop) — the wound can silently recur.

## Changes
*(Direction + invariant only — the patient designs the guard in its `node_contract`.)*
- Convert the Discard Invariant from a remembered rule into a **deterministic guard** at the sync discard
  point: before the destructive switch, detect uncommitted tracked edits the discard would destroy.
- The guard must **emit a steering-vector, not a silent discard**: on detection, halt and name (a) the
  files about to be lost, (b) the *correct* channels for the change (commit→PR, or remote issue labels
  e.g. `gh issue edit <n> --remove-label backlog`), and (c) the explicit override to discard intentionally.
  *The failure message is the compass to the next valid action — not merely a block.*
- Leave implementation choice (abort vs auto-stash vs warn-with-flag) to the patient's context.

## Pre-Requisites
- The discard path is `kernel/daemon_node.py` `sync_and_clean_node` (the `git_client.switch(..., discard_changes=True)` call).
- Working-tree status is queryable before the switch (`git status --porcelain`).

## Post-Requisites
*(Falsifiable — a replay of the case-05 condition.)*
- A deterministic test: given an uncommitted edit to `artifacts/frontier_state.yml`, `sync` **halts**
  (refuses / non-zero) and prints the channel-vector — the edit is **not** silently lost.
- With the explicit override, `sync` proceeds and discards (intentional path preserved).
- The guard ships **with its own test** (the guard and its test are one CI-enforced artifact) — so the
  guard itself cannot silently rot.

## Depends On
- Patient primitive: the **Discard Invariant** synthesized in `artifacts/audit/retro-1793-ghost-loop.md`.
- Dyad-Healer ward evidence: **`case-05`** (ghost-1793 confabulated-recovery) — the external attestation
  of the 17h cost the patient can't self-generate.
