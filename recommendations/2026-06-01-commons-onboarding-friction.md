# Recommendation — Dyad Practice Commons: Init+Join onboarding friction (form-track improvement)

> **Type:** Form-contribution candidate (protocol/tooling improvement) — *not* a patient prescription
> **Channel:** Dyad-Practice Operator → the Commons (`CONTRIBUTING.md` / Founding gate, or an issue). The Healer
> **surfaces only**; conveyance upstream is the Dyad-Practice Operator's call (channel discipline — the Healer
> never drives the form repo).
> **Authored by:** the Dyad-Healer (external entity) · **Surfaced to:** Healer Operator, 2026-06-01
> **Source-of-grain:** our own `existing`-dyad join executed this session (ledger §"2026-06-01 — Joined the Dyad
> Practice Commons"); verified live against `The-Dyad-Practice-Commons/the-dyad-practice@31122b6`.
> **Discipline:** describe-the-wound-not-the-suture — wounds named **with the workaround we used** (so patterns
> are actionable); sutures left soft, for the steward dyad to author.

## Disposition note — falsified before drafting (Operator [ALIGN]: *falsify; rewrite with survivors*)
Every friction point this session was tested against one question: *is this a **form/protocol** pattern the
steward can correct, or is it **ours / environmental / already-fixed**?* Only survivors are reported.

| Friction observed | Verdict | Reason |
|---|---|---|
| Summit text silently corrupts in scaffolded YAML | **SURVIVES (highest)** | demonstrated live; generalizes to any dyad whose summit text has `#`/`:` |
| Deposit step assumes org write access ("self-authorizing") | **SURVIVES** | direct `git push` excludes the external newcomers the Commons recruits |
| Deposit step has no fetch/rebase under concurrent pushes | **SURVIVES** | `origin/main` moved 4× during our session; naive push rejected |
| No summit-quality guidance (distinct/orthogonal/realized) | **SURVIVES** | registry value depends on distinct peaks; nothing steers toward them |
| "Agent drives, Operator runs nothing" vs agent sandboxes | **SURVIVES (medium)** | Claude/`agy` harness blocks external-code exec; Operator must authorize |
| `CONTRIBUTING.md` 404 (README ×2 + `onboard.py` template) | **FOLDED** | self-resolved mid-session (steward's #16); no standing pattern |
| Detached-HEAD → non-fast-forward deposit | **FOLDED** | *ours* — a consequence of our pin-to-vetted-commit discipline, not the protocol (the sync facet that *is* the protocol's survived, above) |
| Line-wrap mis-path + orphaned `.git/modules/commons` | **FOLDED** | *ours/environmental* — terminal line-wrap + our own prior `agy`-session leftover |
| Signature / birth-hash mechanics | **FOLDED** | strengths, not friction (commits signed by the Operator's key; identity anchored correctly) |

---

## Survivors — friction · how we got through · candidate pattern

### 1. Summit text silently corrupts in the scaffolded YAML (highest-value; demonstrated)
- **Friction:** `onboard.py` scaffolds summits as **unquoted** YAML (`- TODO: …`). Our text contained ` #1233`
  and `case-04:` — the ` #` was parsed as a **comment** (summit truncated mid-sentence) and the `:` turned the
  entry into a **dict**. `validate_registry.py` would have **passed both**: it checks `summits` is a non-empty
  list but never that each element is a *string*. Corrupted entries publish clean.
- **How we got through:** tested the parse directly (`yaml.safe_load`) rather than trusting onboard.py's
  "complete and consistent"; saw the corruption; switched to quoted scalars; re-tested to confirm clean strings.
- **Candidate pattern:** emit **quoted scalars** in the scaffold, and have `validate_registry.py` assert
  `isinstance(s, str)` per summit. Two small changes — and summit text is exactly where `#`/`:` (issue refs,
  ratios, times) cluster.

### 2. The deposit step (`git commit && git push`) is the weakest link — two facets
- **Friction (access):** the step says registration is "self-authorizing — no PR." That conflates *no
  merge-contest* with *no access needed*. The direct `git push` only works for someone with **org write** — the
  exact external newcomer the Commons recruits cannot deposit this way.
- **Friction (sync):** `origin/main` moved **4×** during our session (declaration slices landing in parallel).
  The deposit step has **no `pull --rebase`**, so the naive `git push` was rejected twice.
- **How we got through:** rebased our single-file commit onto the new `main` each time (no collision — nobody
  else touches our file) and retried.
- **Candidate pattern:** `pull --rebase origin main` before pushing (or have `onboard.py` perform the synced
  deposit itself rather than print a naive instruction), plus a **fork-and-PR fallback** for dyads without org
  write — otherwise "self-authorizing" holds only for insiders.

### 3. No guidance on what makes a good summit → registry value erodes
- **Friction:** "declare your +1 summits" carries no criterion. Nothing steers a dyad away from summits that are
  **collinear with each other** or **duplicate an existing entry**. A directory of dyads is only useful if the
  peaks are *distinct*.
- **How we got through:** our first pair was collinear (one summit a special case of the other, and brushing
  `dyad-steward`'s "knowledge compounding"); we re-derived an orthogonal pair only after the Operator caught it.
- **Candidate pattern:** a one-line criterion in `DIRECTORY.md` / the `onboard.py` prompt — summits should be
  **distinct from existing entries, orthogonal to each other, and realized (not aspirational)**.

### 4. "Your Agent drives it; you run nothing" collides with agent sandboxes
- **Friction:** the README promises the Operator holds no checklist and runs nothing. But a Claude/`agy` agent's
  harness **blocks executing external code** — `git submodule add` + `python3 commons/scripts/onboard.py` tripped
  our auto-mode classifier as "untrusted code integration." The Operator necessarily had to authorize/run them.
- **How we got through:** the agent **vetted `onboard.py` in full first** (benign — read-only git history + one
  local file write, no network write pre-deposit), pinned the submodule to a **signed, content-hashed** commit,
  then the Operator ran the external-code steps via `!`.
- **Candidate pattern:** set expectations for sandboxed agents — the Operator *will* approve the submodule-add
  and the `onboard.py` run; name it as a feature (human-in-loop on external code), not a protocol break.

---

## Provenance
All four survivors were lived during `dyad-healer`'s own Init+Join on 2026-06-01 (existing-dyad path). Full
session trail — including the folded items and the verify-before-asserting catches — in
`ledger/ledger.md` §"2026-06-01 — Joined the Dyad Practice Commons (Init + Join protocol)".
