---
name: commit-direct-to-main-no-branch-pr
description: "This repo commits direct to main; no feature branch / no PR gate. Don't fire the generic branch-first default here."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 35ce4bd2-4fbc-4781-a95e-161f79bb4973
---

In the dyad-healer repo, **commit straight to `main`** — no feature branch, no PR gate.

**Why:** Caught over a three-rub thread (2026-06-07). I over-applied the generic Claude Code
default *"if on the default branch, branch first"* and cut a `deprecate-rack` branch. The Operator's
rubs ("what to merge?" → "do we need a PR gate?") falsified it: a PR brings **zero** benefit in this
configuration — single dyad (Operator *is* the reviewer, in real time, via lean?→rub), no CI
(`dag.py` is self-test-gated — the mechanism is the gate), synchronous (no async to coordinate),
push-blocked remote, and the commit message + `ledger/` + linear history already are the audit
trail. The Validate half of 1+1=3 is supplied by the live dyadic loop + self-test *before* a PR
could add anything. The engine's own lineage says so: `bin/dag.py` "we commit to main" (it dropped
cairn's branch-per-node model precisely to avoid this). A branch+merge/PR is force-against-grain.

**How to apply:** When work is ratified and ready to land, `git add` + `git commit` directly on
`main` (still only when the Operator asks — that harness rule holds and is separate). No branch, no
`--no-ff` bubble, no PR. **Falsifiable** — a gate earns its place only if one of these becomes true:
a second independent reviewer joins (real new eyes), CI exists to gate mechanically, work goes
async, or an untrusted contributor appears. None hold today; per [[uncertainty-is-law]] don't
manufacture the gate as a "blind spot." Ties to [[automate-recurring-manual-friction]] (kill
recurring ceremony) and [[grounding-gate-not-ingrain]] (the generic default is a dispositional
habit; this is the gated correction).
