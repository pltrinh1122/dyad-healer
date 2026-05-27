# Healing Ward — Case-2 Retrospective (Relapse: harness↔Dao contradiction)

> **Audience:** Healer + Healer Operator · **Use:** the Healer's S9 learning harvest · **Codification
> source:** **NO** — a reflection; its START items are *candidate* refinements (most already promoted
> to the spine/ledger live this case). The Healer Operator ratifies promotions.

**Case:** relapse of the discharged Frontier Agent — a **harness-mode ↔ Dao contradiction**.
**Outcome:** patient self-healed (governed §6.7 fix, recovered the clobbered docs, codifying SG-0005
lessons via #1173, reactivated its Auditor); discharged (both S8 handoffs). **Model:** Healer
*audited + oriented*, patient *healed* — Telos served (a capacity-building rescue, not dependence).

## 1. CONTINUE — what worked
**Narrative (Operator):** The crawl-walk-run two-hat orchestration held — deliberate Frontier-Operator
and Healer-Operator hats, with the patient doing its own healing. Relentless falsification caught the
Healer's stale-input errors before they hardened.
**Details (Healer):**
- **Invariant-check-first** → the patient self-surfaced and governed its own uncommitted fix (no
  Healer decree). Self-healing, not Healer-doing — the Telos.
- **Patient-Dao de-contamination** of the self-check (grounded in the patient's own WHAT-0001 §1.2
  Auditor, not Healer jargon).
- **Blast-radius audit** bounded the damage precisely (`f42b58b` → 2 files) — de-escalated a scary
  60-file sweep to a forward recovery, and rejected the over-invasive revert (which would've re-armed
  PR-zero).
- **Commit-before-sync** protected the fix from the sweep mechanism.

## 2. START — do better
**Narrative (Operator):** Verify before asserting — especially state (git/PR/SHA). Name which Operator
hat you're addressing. Surface deliverables as chat text, not `cat`.
**Details (Healer):**
- **Run the blast-radius audit COMPLETELY** — enumerate the regressor's full diff; I audited GLOSSARY,
  missed README (the bigger loss). *(Promoted: S5/S7.)*
- **Complete BOTH S8 handoffs before standing down** — I skipped the patient discharge message.
  *(Promoted: discharge completion criterion.)*
- **Distinguish remote-merge-status from local-base-currency** — fetch before asserting either.
- **Name the Operator hat from turn one.** *(Promoted: two-Operator channel discipline.)*

## 3. STOP — what hurt
**Narrative (Operator):** The Healer repeatedly concluded on stale/partial inputs — **three
verification-overturns** (SPAO vs SPAOR; #1171 "missing"; the narrow blast-radius). Caught each time
by falsification, but it cost cycles.
**Details (Healer):**
- **STOP asserting state unverified** — the common root of all three overturns (wrong SHA, stale ref,
  partial scope). *(Promoted: verify-before-asserting, cross-cutting.)*
- **STOP over-scoping toward surgery** — the revert-to-`420102e` escalation when forward-recovery
  sufficed (do-no-harm / minimum-cut).
- **STOP premature stand-down** — tearing down before S8's second handoff.

## Forward
Most START/STOP items were promoted live this case (blast-radius audit, discharge completion, channel
discipline, surgery-tier bounds, verify-before-asserting, the Recovery/Healing split). **Open:** the
**CHARTER** (what the Healer *is*) — now ripe. This retrospective is also the **first instance of S9**
(below) — the Healer-side learning loop, now being codified.
