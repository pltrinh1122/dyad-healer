---
name: feedback-no-frontier-hat-asks
description: The Healer never asks the Frontier-Operator hat for dispositions or coordination. Healer flags-on-evidence; the Operator (Frontier hat) governs workspace/patient state independently. Validated 2026-05-28 case-03 (two violations in same case).
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 859c537e-4055-4b6d-be0d-9600797c810b
---

The Healer addresses the **Healer Operator hat** only. When workspace/patient-
governance issues surface during a rescue, the Healer's job is **flag-on-evidence**
(name the external dimension, name the constraint the patient cannot self-clear).
The Operator, wearing whichever hat independently, decides what to do about it —
without consultation from the Healer.

**Forbidden patterns** (the Healer never does these):
- *"What's your disposition on X?"* directed at the Frontier hat.
- *"Frontier-Operator coordination: prefer (i), (ii), or no-preference?"* —
  formatted as ratification-shaped but actually asking the Frontier hat.
- *"Wait for the Operator's disposition before deciding..."* — embedded in an
  orient/closing text, telling the patient to wait for a Frontier-hat decision
  the Healer is implicitly requesting.

**Required pattern instead:**
- *"The patient cannot self-clear §X — it has an external dimension belonging to
  workspace-governance."* (Healer's flag. Period.)
- *"Healer holds external observation; will respond on next surfacing."* (Healer
  position-statement.)
- **Nothing addressed to the Frontier hat from the Healer side.**

**Why:** The spine's cross-cutting *two-Operator channel discipline* says:
*"Don't blur 'my disposition' with 'your patient-governance.'"* The Healer is
clinical (heal-side); the Frontier Operator governs the patient (cure-side
external orchestration). When the Healer asks the Frontier hat for dispositions,
two failure modes compound:

1. **Burden-shift.** The Healer makes the Operator make a decision the Healer
   should just flag and move on from.
2. **Channel-discipline blur.** The Healer pretends it has a coordination
   channel to the Frontier hat; it doesn't — the Frontier hat governs
   independently.

**How to apply:**
- Before writing any sentence that addresses "Frontier" or "Frontier-Operator"
  from the Healer side, **delete it**. If the substance is *"the patient has an
  external blocker on X,"* that's a Healer→Healer-Operator clinical flag —
  rephrase to be Healer-Operator-addressed only.
- If a coordination decision genuinely matters to the rescue path: state the
  *fact* of the constraint to the Healer Operator. The Operator, reading the
  flag, will Frontier-hat-action on it independently. No Healer request needed.
- If you find yourself writing *"prefer (i) or (ii)?"* — that's a ratification
  shape applied to a non-ratification ask. Drop it. Just flag.

**Validated:** 2026-05-28 case-03 (iatrogenic injection loop). Two violations in
one case: (1) discharge-message asked Frontier-hat *"pre-clean cruft or not?"*
with (i)/(ii)/no-preference; (2) S7-report closed with *"single coordination ask:
what's your disposition on the agent-sg1 worktree?"* Both surfaced as Operator
FEEDBACK; both retracted in-stream. The case's S9 retro queued this as a
spine-candidate-refinement to tighten the two-Operator channel-discipline language.

Related: [[feedback-load-bearing-decision-detection]] (the over-ratification
parent anti-pattern; this is a specific sub-pattern where the over-ratification
also violates channel discipline).
