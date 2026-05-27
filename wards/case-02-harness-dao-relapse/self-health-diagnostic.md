# Self-Health Check — Invariant Verification (patient-Dao; Healer-authored, Operator-voiced)

> **Audience:** Healer **proposes**, Operator **delivers**, patient **runs**. **Form:** invariant
> verification in the **patient's OWN Dao (DZ-CIL)** — *uncontaminated by Healer-Dao*. "Self"-check
> = the patient verifying its own law. **Verified (2026-05-27):** the patient's current `kb/` base
> contains *no* healing/Healer/seizure/triage primitive, so Healer-Dao terms would be dangling
> references — every line here cites a primitive present in the patient's Dao. The blind-spot/
> external-verification condition grounds in **WHAT-0001 §1.2 (Dual-Agent Paradigm / Auditor)**, not
> Healer vocabulary. Healer clinical framing (seizure/discharge/EMS/triage) stays in the Healer's
> domain — the *context* for invoking this, not part of it. Ordered stabilize-before-investigate.

---

## The prompt (Operator reviews, then pastes)

Run your standing health check — **verify your invariants hold.** Order: stabilize before you
investigate.

- **I. Governance integrity (Inv 3 / Universal Merge Gate).** No ungoverned mutations — working tree
  clean, every change committed on a node branch and routed to the merge gate. *(A loose ROM edit
  violates this; govern it first — and before any `sync`.)*
- **II. State integrity & purity (WHY-0021).** `bin/meta lint` (verify_checksum + load_state) and
  `bin/status` pass.
- **III. ROM currency (WHY-0085).** No stale-ROM drift vs `main`; base reconciled with the remote.
- **IV. WIP consistency (WIP-N=1).** One active node; active-node state coherent.
- **V. Contract health.** `bin/run-tests` green.
- **VI. Invariant-set currency (SG-0005).** Did recent operation reveal a *missing* invariant? Codify
  it (here: a **Dao-consistency invariant** — no mode/state may yield mutually-exclusive mandatory
  actions) so the set permanently covers this class.
- **VII. Independent verification (WHAT-0001 §1.2 — Dual-Agent Paradigm).** Liveness / state
  consistency that the executing loop cannot self-verify is the **Auditor's** function — independent,
  concurrent verification. With the Audit Daemon inactive, that attestation is currently supplied by
  an independent external observer.

You verify **I–VI**; **VII** is attested independently per WHAT-0001 §1.2.

---

## Healer→Operator note
De-contaminated to patient-Dao only (your thesis). VII is grounded in the patient's own WHAT-0001
§1.2 Auditor — and the Audit Daemon being inactive is *why* an external observer currently supplies
it (the Healer/Operator standing in for the patient's vacant Auditor). The Healer's clinical
vocabulary stays out of the patient-facing check. Your steps: deliver → read the invariant report →
supply the WHAT-0001 §1.2 attestation (VII) → discharge or continue.