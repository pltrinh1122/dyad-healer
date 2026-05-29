# Recommendation — Agent-ROM integrity violations (Frontier-side fix)

> **Type:** Prevention prescription (Pillar 2) · **Channel:** patient's Requirement Intake template
> **Filed:** 2026-05-29 → [dz-cil#1393](https://github.com/pltrinh1122/dz-cil/issues/1393) (OPEN, `status:triage`)
> **Authored by:** the Dyad-Healer (external entity) · **Ratified by:** Healer Operator before filing
> **Source-of-grain:** backlog Pillar-2 open item "Frontier-side fix recs"; re-verified at time-of-use against `dz-cil@main`.

## Disposition note — what changed at grounding
The backlog flagged **three** Frontier-side defects. Re-verifying each against live `main` (the patient
is a self-modifying target — re-verify at time-of-use) revised that to **two**:

| Flagged | Verdict | Evidence |
|---|---|---|
| §6.7 / harness-mode contradiction | **REAL — at source** → filed (V1) | `AGENT.md` Rule 7 unconditional; exception lives only in `GEMINI.md` (`retro-1170`), never promoted to the universal doc |
| stale `skills/audit_daemon.py` path | **REAL — narrowed to 1 live ref** → filed (V2) | `GEMINI.md:10` `Prompt="Run ./skills/audit_daemon.py"`; actual path `drivers/audit_daemon.py`. Historical audit-trail occurrences (`frontier_state.*`, `retro-776`) left intact |
| `triage` vs `status:triage` label mismatch | **ALREADY FIXED — dropped** | intake template now `labels:"status:triage"`; README CLI uses `--label "status:triage"`; no bare `triage` reference exists |

## Authoring discipline applied (the [FEEDBACK] this rec earned)
First draft prescribed the cure in §2 (add a Rule-7 carve-out; repoint the path). Operator [FEEDBACK]:
*"too prescriptive — focus only on the ailment / the invariant being violated, not the solution; DZ-CIL
will figure it out or falsify it in its own context."* Falsified and held (more charter-aligned than the
draft — constraint #6 *enables-not-fixes* / *describe the wound, not the suture*). The filed intake reports
the **violated invariants only**; §2 Proposed Mechanisms explicitly defers cure-design to the patient.

## The two violations (as filed)
- **V1 — rule contradiction (internal consistency).** `AGENT.md` Rule 7 ("Handling Operator Curiosity,"
  formerly §6.7) unconditionally mandates immediate tool-run; cannot be obeyed during a WIP-N=1 HARD HTIL
  halt (`AGENT.md:72`) / under Rule 8's async-default (`AGENT.md:110`). Exception recognized in
  `retro-1170` and encoded in `GEMINI.md`, but `AGENT.md` (universal) was not reconciled.
- **V2 — broken operational reference (referential integrity).** `GEMINI.md:10` bring-up
  `Prompt="Run ./skills/audit_daemon.py"` points at a nonexistent path; daemon resides at
  `drivers/audit_daemon.py`.

## Strategic harmonization
- **V1** → SG-0002 (gate semantics unambiguous) · SG-0003 (mid-loop contradiction stalls velocity).
- **V2** → SG-0002 (daemon = risk-management safety net for gateless autonomy) · x-ref #1233 (daemon liveness).
- Umbrella: NS-0001 (self-consistent ROM = substrate of the 1+1=3 partnership).
