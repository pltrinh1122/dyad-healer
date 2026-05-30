# Recommendation — CI lexical-guard false-positive cascade (Frontier-side prevention)

> **Type:** Prevention prescription (Pillar 2) · **Channel:** patient's Requirement Intake template
> **Filed:** PENDING — Healer Operator ratifies, then Healer files directly via the Requirement Intake template
> **Authored by:** the Dyad-Healer (external entity) · **Ratified by:** Healer Operator before filing
> **Source-of-grain:** case-04 S9 carry-forward ("guard bug + harmonization deferred → S9 prescription",
> `ledger/backlog.md`); re-verified at time-of-use against `dz-cil@origin/main` HEAD `8507664` (#1421).

## Disposition note — what changed at grounding (Operator [ALIGN]: *falsify*)
Re-verified each carried item against live `main` immediately before filing (the patient is a self-modifying,
lineage-aligning target). The "falsify" pass **collapsed two candidate violations to one** and corrected the
framing of the survivor:

| Carried item | Verdict | Evidence (HEAD `8507664`) |
|---|---|---|
| guard raw-substring / `.venv` scope | **REAL — narrowed & sharpened** → filed (V1) | raw substring (`if word in content_lower`) exists in **exactly one place**: `tests/test_lexical_guard.py:87`. The **production drivers checking the same deprecated terms already use `\b` boundaries** — `drivers/audit_daemon.py:287`, `drivers/knowledge_accrual_skill.py:169` — and scan `kb/` only. `.venv` is **not** in `immune_zones` (only `GLOSSARY.md`, `semantic_ledger.yml`, `WHY-`), so the CI guard scans its 670 tracked files. The wound is **CI-guard divergence from the production implementation**, not a broken guard. |
| `dao/ziran/align` deferred-debt locality | **DROPPED — stale** | the ledger documents `proposed:`/`known_debt` as *intentional* deferred debt ("known debt to be resolved via Harmonization when gravitational pull demands it") — the patient's own v3 cure. The guard reading only `terms:` (state `deprecated`) and ignoring `known_debt` is **correct behavior**. No wound. Dropped, as the `triage`-label item was dropped from `#1393`. |
| GEMINI.md `skills/audit_daemon.py` bring-up path | **ALREADY FILED — out of scope** | `#1393`-V2 (OPEN); re-verified still live (line drifted `:10`→`:21`). Priority-bump tracked there, not re-filed. |

## Authoring discipline applied
Filed **ailment-only** — the violated invariant and the wound, no prescribed cure — per the standing Operator
[FEEDBACK] on `#1393` and the *describe-the-wound-not-the-suture* / *enables-not-fixes* discipline. The patient
designs the suture in its own `node_contract`; note the boundary-correct implementation already exists in-repo
(the production drivers), so the patient has its own reference, not a Healer prescription.

## The violation (as filed)
- **V1 — CI lexical-guard precision & scope (false-positive correctness + internal consistency).** The CI
  lexical-guard gate `tests/test_lexical_guard.py` `check_content()` matches each deprecated term
  (`kb/semantic_ledger.yml` `terms:`, `state: deprecated`) as a **raw substring** of lowercased content
  (`if word in content_lower:`), and its scan scope **includes vendored dependencies** (`.venv` is git-tracked
  — 670 files — and not covered by `immune_zones`/`EXEMPTIONS`). Together these manufacture false positives at
  volume (case-04: a deprecation amplified to a **67-count** trip → benign hold-loop). The same-purpose
  production drivers — `drivers/audit_daemon.py` (`evaluate_semantic_immune_system`) and
  `drivers/knowledge_accrual_skill.py` — already match on `\b` word boundaries and scan `kb/` only; the CI gate
  diverged from them.
  - *Invariant — matching:* the CI guard matches deprecated terms on **token/word boundaries**, consistent
    with the production drivers (`\b`).
  - *Invariant — scope:* the CI guard's scan scope **excludes vendored dependencies** (e.g. `.venv`).

## Strategic harmonization
- **SG-0003** (Inner-Loop Velocity): a false-positive cascade halts the inner loop (case-04's benign
  hold-loop) — guard noise is a velocity tax.
- **SG-0002** (Containment & Delegation): the guard is a risk-management safety net; one that cries wolf erodes
  trust and invites bypass, shifting safety back to the Operator.
- **NS-0001** (Synergistic Partnership / self-consistent ROM): two divergent implementations of the same
  deprecated-term check (CI raw-substring vs. driver `\b`) is a consistency gap in the substrate.

## Depends on
- **External attestation (provenance the patient cannot self-generate):** Dyad-Healer ward
  `case-04-self-stabilized-seizure` — first self-caught seizure; the cascade replay is the evidence.
- **Patient primitives:** `kb/WHY-1157-lexical-guard-extension.md` · `kb/semantic_ledger.yml` ·
  `tests/test_lexical_guard.py` · `drivers/audit_daemon.py` · `drivers/knowledge_accrual_skill.py`
  (the boundary-correct reference implementation).
- **Cross-ref:** `#1393`-V2 (auditor bring-up path) — sibling Frontier-side defect, filed separately.

## Post-requisites (falsifiable — replay the case-04 evidence)
- **Matching:** content containing a legitimate superstring of a deprecated term (e.g. a word embedding
  `epic`) does **not** trip the CI guard; a genuine standalone deprecated term still **does** — parity with
  the production drivers' `\b` behavior.
- **Scope:** `.venv` / vendored content is not scanned by the CI guard (no vendored-dep hits in a guard run).
- **Cascade replay:** the case-04 input (one deprecation, corpus un-harmonized) yields a bounded true-positive
  count — not a 67-count false-positive trip.
