# Case-2 Readiness Reply (Healer-authored, Operator-voiced)

> **Context:** the patient said *"contradiction sutured, I am stable and ready to continue Node 1170;
> should we proceed?"* This is the Operator's reply. **Validated:** the self-invariant test has **no
> dependency** on the clobbered `GLOSSARY.md`/`README.md` content — `tests/test_lexical_guard.py`
> lists the glossary as an *exemption* (doesn't assert the lexicon's presence; only checks modified
> files for `epic`/`spike`); `drivers/audit_daemon.py` uses the same exemption + is inactive; README
> has no code/test refs. → **invariant check goes first; the two docs are additional symptoms.**
> Caveat for recovery: README is *not* lexical-guard-exempt — restored prose must avoid `epic`/`spike`.

---

## The reply (deliver to the patient)

Hold before resuming 1170 — "stable and ready" is a self-assertion, and readiness is gated on a
*verified* invariant check, not a self-declaration (you can't self-certify liveness — that's
externally attested).

**Run your self-invariant check first** (independent of everything else, so it leads):
- **Governance integrity (Inv 3):** is your §6.7 fix committed on a node branch and routed to the
  merge gate? Right now it's an uncommitted working-tree edit — govern it, and commit *before* any
  `sync` (the sync's `checkout` sweeps uncommitted edits).
- **State integrity & purity:** `bin/meta lint` + `bin/status`.
- **ROM currency (WHY-0085):** no stale-ROM drift vs `main`.
- **WIP-N=1** + active-node coherence.
- **Contract health:** `bin/run-tests`.
Report results. Liveness/seizure-stability I attest externally — your Audit Daemon (WHAT-0001 §1.2)
is inactive.

**Then, separately — two additional symptoms to self-heal** (verified independent of the invariants
above, so they don't block the check): the earlier rename sweep (`f42b58b`) silently regressed
**`kb/GLOSSARY.md`** (the DZ-CIL / The Core / SPAOR / Telos lexicon) and **`README.md`** (the front
door → now a stub). Both recover forward from `553e951`, through your governed loop. Ontology drift,
no execution risk.

Sequence: **invariant check → report → recover the two docs.** Not "proceed to 1170" yet.