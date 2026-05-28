# Dyad-Healer — Backlog (by-pillar tracker)

> **Audience:** Healer + Healer Operator · **Use:** the structured *what + status* of Dyad-Healer work,
> organized by the **five pillars = the five [modes](../kb/modes-of-operation.md)** (Rescue · Prevention
> · Tooling · Research · Maturation). **Supersedes** the ad-hoc "OPEN LOOPS" list in the ledger.
> **Single-home-per-fact:** this file holds *what / status / pointer*; the *why / detail / dialectic*
> lives in [`ledger.md`](ledger.md), clinical evidence in `wards/`, prescriptions in `recommendations/`.
> Living; reconstructed 2026-05-27 from durable sources (the ephemeral original design was lost).

> ## Classification rule (orthogonality) — added 2026-05-27 per Operator directive
> The 5 modes are **not** orthogonal as prose (mode 4 is "cross-cutting," mode 3 "beneath 1–2"). They
> become orthogonal **for assignment** under one rule: **classify each item by its own terminal
> artifact**, and treat the modes doc's "cross-cutting / beneath" language as **dependency arrows
> between items, not shared membership**.
> - **1 Rescue** → a clinical intervention on a *currently-seized* patient.
> - **2 Prevention** → a *prescription delivered to the tended family* (external output).
> - **3 Tooling** → a *built code instrument* (per modes doc: software, "when volume justifies"; a
>   markdown template/tracker is **not** code → it is a practice artifact = pillar 5).
> - **4 Research** → a *finding / evidence artifact* (audit, retro, taxonomy) — knowledge, not yet operationalized.
> - **5 Maturation** → a *change to our own Dao* (kb principles, protocols, identity, governance, and
>   the practice's own non-code documentation/templates/trackers).
> - **Operational** (out-of-pillar) → pure VCS/infra chores (commit, push, rename) — *not craft*;
>   quarantined so they don't pollute a pillar.
> **Rules:** (a) first-match, most-outward-first (1→2→3→4→5→Operational); (b) one item = one terminal
> artifact — **split compound work** along the artifact boundary and link the halves with a dependency.
> *(A proposed one-line clarification to the ratified `modes-of-operation.md` is pending Operator ratification — see ledger.)*

> Legend: `- [ ]` open · `- [x]` done · `🚫` blocked (reason) · `⏸` deferred (no action until warranted) · `→⟶` dependency.

## Pillar 1 · Rescue — clinical intervention on a seized patient (reactive safety net)
### Open
- [ ] *(none — no patient currently seized)*
### Done
- [x] **case-01** PR-zero revival — seized loop resuscitated, cured & proven on real restart, discharged → `wards/case-01-pr-zero-revival/`
- [x] **case-02** harness↔Dao relapse — telemetry-silent loop, halted + restarted into pending state, discharged → `wards/case-02-harness-dao-relapse/`

## Pillar 2 · Prevention — prescription delivered to the tended family (proactive; the Telos's heart)
### Open
- [ ] **Frontier-side fix recs** (file via Requirement Intake template): the §6.7/harness-mode contradiction; the stale `skills/audit_daemon.py` path (actual: `drivers/audit_daemon.py`); the intake docs' **`triage` vs `status:triage`** label mismatch (template front-matter + README CLI example reference a nonexistent `triage` label) → ledger "Open questions"
### Done
- [x] **Audit-daemon liveness/heartbeat rec — FILED** → [dz-cil#1233](https://github.com/pltrinh1122/dz-cil/issues/1233) (`status:triage`); Healer filed directly via the patient's Requirement Intake template; harmonized SG-0002/SG-0003

## Pillar 3 · Tooling R&D — a built code instrument (only when volume justifies)
### Open
- [ ] ⏸ Async rec-generation mechanism (via `/goal` verifiable-completion or background Agent) — *if built* (deferred)
### Done
- [x] *(none — no code instrument built yet; friction has not justified one. NB: templates/trackers are pillar-5 practice artifacts, not tooling.)*

## Pillar 4 · Research / learning — a finding / evidence artifact (cross-cutting engine; feeds 2 & 5)
### Open
- [ ] **Extraction audit (findings half):** mine case CONTINUE-patterns (commit-before-sync, blast-radius, invariant-check-first, crawl-walk-run); reconcile claimed-vs-actual promotions (e.g. blast-radius marked "Promoted S5/S7" but absent from spine = a gap-finding); build the seizure-class taxonomy. `→⟶` feeds the pillar-5 codify item.
### Done
- [x] **Collateral-regression finding** — first seizure's true blast radius (GLOSSARY + README clobber via `f42b58b`); new harm class identified → ledger "Major finding"

## Pillar 5 · Maturation — a change to our own Dao (inward; dominant to date)
### Open
- [ ] **Codify extraction findings into the Dao** (the other half of the learning-loop): promote validated CONTINUE-patterns into `kb/`; close the claimed-vs-actual gaps in the spine; enhance S9 → accrue-measure (Telos metric + patient-records source). `⟵→` depends on the pillar-4 findings.
- [ ] **PROPOSED TELOS** ratification — Operator-proposed, not yet ratified → needs `kb/` WHY → ledger "Open questions"
- [ ] **CHARTER** — what *is* the Healer ontologically? needs `WHY`/`WHAT` codification in `kb/` → ledger "Open questions"
### Done
- [x] **CLAUDE.md** operating discipline codified (loadable anchor; verify-before-asserting)
- [x] **`modes-of-operation.md`** ratified (5 modes + 3 postures)
- [x] **`recommendations/` bucket** ratified (4th bucket; governance) — 2026-05-27
- [x] **`patient-recommendation.md`** template authored (non-code practice artifact)
- [x] **`backlog.md`** by-pillar tracker built + orthogonalized (this file) — 2026-05-27
- [x] **README** (identity) committed `a309594`; **the-dyad-practice** form published
- [x] **EMS spine** adopted & ratified as Healing-Protocol backbone → `kb/healing-protocol-spine.md`
- [x] **Dyad-Healer self-identity** ratified (dropped `DZ-` prefix) → ledger Decisions
- [x] **Recovery↔Healing Protocol split** ratified (by owner) → ledger Decisions
- [x] **SPAOR adopted as our execution loop** (converged via 3-turn dialectic; complementary to the Dyad Practice manner; form-not-wiring; phase-gates the manner) → ledger "SPAOR adopted…"
- [x] **`kb/execution-loop.md` ratified** 2026-05-27 (Operator approval) — SPAOR + spine + posture mapping codified
- [x] **Modes-doc orthogonality classification rule ratified** 2026-05-27 — line applied to `kb/modes-of-operation.md` §"How they relate"
- [x] **CLAUDE.md cross-refs added** — posture→execution-loop line + Durable Dao map includes `kb/execution-loop.md`, `ledger/backlog.md`, `recommendations/`

## Operational (out-of-pillar) — VCS / infra chores; not craft
### Open
- [ ] ⏸ Repo dir/remote rename `dz-healer`→`dyad-healer` (deferred; push blocked) → ledger Decisions
- [ ] ⏸ Set origin URL → `dyad-healer.git` (Operator runs `git remote set-url`) (deferred)
### Done
- [x] **Loop #3 commit** 2026-05-27 — 2 commits on `main` (`577d6e7` ratified Dao layer + `6257152` dialectic & outputs); working tree clean. Push remains 🚫 blocked.
