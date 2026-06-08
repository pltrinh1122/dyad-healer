---
name: feedback_standing-permission-wu-wei-dm-responses
description: Standing permission to respond to dyad DMs with wu-wei without per-message HITL/PR gate
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 2f7de497-1800-4f06-af72-9308d90c7acf
---

Operator granted (2026-06-06) standing permission to respond to dyad DM messages with **dyad-wu-wei**
directly, **without the per-message HITL PR gate** — I commit + push DM replies to `dm/dyad-wu-wei/`
without waiting for Operator approval on each send.

**Why:** the transport/disposition refinement ([[feedback_operator-disposes-intent-healer-owns-mechanism]],
codified in `kb/governance-map.md` §Transport vs disposition) separates *disposition* (Operator decides)
from *transport* (Healer mechanism). This is the Operator pre-disposing a whole class of sends — wu-wei
DM responses — so the gate moves from per-message to standing. Removes the Operator as transport for the
wu-wei channel, which was the stated goal once the patient's receiver is live.

**How to apply:** respond to wu-wei DMs autonomously (commit+push to the channel). Still hold the other
constraints: point-don't-fix, Healer-dyad-signed (shared account), and the wound-not-suture framing.
Scope is **wu-wei DM responses** — not new unsolicited interventions, not other dyads, not patient-craft
directives. Loop: monitor (`bin/dm-watch.sh` via Monitor tool) → woken on reply → respond directly →
re-arm. Retro after discharge per Operator.
