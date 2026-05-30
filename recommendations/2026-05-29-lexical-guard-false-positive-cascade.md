# Recommendation — Lexical-guard false-positive cascade (Frontier-side prevention)

> **Type:** Prevention prescription (Pillar 2) · **Channel:** patient's Requirement Intake template
> **Filed:** PENDING — Healer Operator ratifies, then Healer files directly via the Requirement Intake template
> **Authored by:** the Dyad-Healer (external entity) · **Ratified by:** Healer Operator before filing
> **Source-of-grain:** case-04 S9 carry-forward ("guard bug + harmonization deferred → S9 prescription",
> `ledger/backlog.md`); re-verified at time-of-use against `dz-cil@origin/main` HEAD `8507664` (#1421).

## Disposition note — what changed at grounding
Case-04 was a single cascade, not two unrelated defects. The cure is **two violations in one filing**
(the lexical guard amplified a harmonization-debt deprecation into a benign hold-loop). Re-verified each
against live `main` (the patient is a self-modifying, lineage-aligning target — re-verify at time-of-use):

| Carried item | Verdict | Evidence (HEAD `8507664`) |
|---|---|---|
| guard substring / `.venv` scan bug | **REAL — live** → filed (V1) | `tests/test_lexical_guard.py` `check_content()`: `if word in content_lower:` — raw substring, no token boundary; no vendored-dep scope exclusion; **670 `.venv` files are git-tracked** and in scan scope |
| `dao/ziran/align` harmonization debt locality | **REAL — live** → filed (V2) | debt recorded only in `artifacts/audit/retro-case-04.md` + a *proposed/deferred* note in `kb/semantic_ledger.yml`; **absent from the active `terms:` set** the guard enforces |
| GEMINI.md `skills/audit_daemon.py` bring-up path | **ALREADY FILED — out of scope** | `#1393`-V2 (OPEN); re-verified still live (line drifted `:10`→`:21`). Tracked there with a priority-bump (auditor live-disabled), not re-filed here |

## Authoring discipline applied
Filed **ailment-only** — violated invariants and the wound, no prescribed cure — per the standing Operator
[FEEDBACK] on `#1393` (*"focus only on the ailment / the invariant being violated, not the solution; DZ-CIL
will figure it out or falsify it in its own context"*) and the *describe-the-wound-not-the-suture* /
*enables-not-fixes* discipline. §"Proposed mechanisms" is intentionally absent; the patient designs the
suture in its own `node_contract` from its own context.

## The two violations (as filed)
- **V1 — guard precision & scope (false-positive correctness).** The lexical guard's `check_content()`
  matches each forbidden term as a **raw substring** of lowercased content (`if word in content_lower:`),
  so a forbidden term (`epic`, `epics`, `ziran_workspace`, … from `kb/semantic_ledger.yml`) trips inside
  unrelated words; and its scan **scope includes vendored dependencies** — `.venv` is git-tracked (670
  files) and not excluded. Together these manufacture false positives at volume (case-04: a single
  deprecation amplified to a **67-count** detector trip → benign hold-loop).
  - *Invariant — matching:* the guard matches forbidden terms on **token/word boundaries**, not raw substrings.
  - *Invariant — scope:* the guard's scan scope **excludes vendored dependencies** (and vendored deps such
    as `.venv` are not carried as enforced corpus).
- **V2 — deferred-debt locality (referential integrity).** A deprecation can be deferred faster than the
  corpus is harmonized (case-04: `#1400` deprecated `dao/ziran/align` before harmonization). When the
  resulting debt is recorded only in a retro artifact and a *proposed* ledger note — **outside the active
  `terms:` set the guard reads** — the debt is invisible to the tool that would otherwise track it, and
  silently resurfaces when harmonization resumes.
  - *Invariant:* deferred harmonization debt has **one authoritative location** that the enforcing tooling
    consults, so a deferral is tracked rather than forgotten.

## Strategic harmonization
- **V1** → **SG-0003** (Inner-Loop Velocity): a false-positive cascade halts the inner loop (case-04's
  benign hold-loop) — noise *is* a velocity tax. · **SG-0002** (Containment & Delegation): the guard is a
  risk-management safety net; a net that cries wolf erodes trust and invites bypass, shifting safety back
  to the Operator.
- **V2** → **SG-0005** (Knowledge Mutation): a correction (the deferral) must be codified as a primitive the
  tooling reads, not left in conversational/retro exhaust. · Umbrella **NS-0001** (Synergistic Partnership):
  a self-consistent ROM — debt recorded where it is enforced — is the substrate of the 1+1=3 partnership.

## Depends on
- **External attestation (provenance the patient cannot self-generate):** Dyad-Healer ward
  `case-04-self-stabilized-seizure` — the first self-caught seizure; the cascade replay is the evidence.
- **Patient primitives:** `kb/WHY-1157-lexical-guard-extension.md` · `kb/semantic_ledger.yml` ·
  `kb/WHY-1048-dao-of-default-ziran.md` (the `dao/ziran` lineage) · `artifacts/audit/retro-case-04.md`.
- **Cross-ref:** `#1393`-V2 (auditor bring-up path) — sibling Frontier-side defect, filed separately.

## Post-requisites (falsifiable — replay the case-04 evidence)
- **V1 matching:** content containing a legitimate superstring of a forbidden term (e.g. a word embedding
  `epic`) does **not** trip; a genuine standalone forbidden term still **does**.
- **V1 scope:** `.venv` / vendored content is not scanned (no vendored-dep hits in a guard run).
- **V2 locality:** the deferred `dao/ziran/align` item is discoverable from the single authoritative
  location, and resuming harmonization surfaces it without relying on the retro artifact.
- **Cascade replay:** the case-04 input (one deprecation, corpus un-harmonized) yields a bounded, true-positive
  count — not a 67-count false-positive trip.
