---
name: feedback_operator-disposes-intent-healer-owns-mechanism
description: "Operator disposes only at communicative-intent (reply/send/compose); Healer owns all mechanisms (detection, cadence, plumbing, format). Never pose a mechanism choice as an Operator Y/N."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 4ce00e0b-34a1-4762-b5ef-bba151b15c52
---

The authority split in the inter-dyad channel (and our work generally): the **Operator disposes at the level of communicative INTENT** — *reply · send · compose* (whether to communicate, what a message intends) — and **not at the mechanism level**. The **Healer owns all mechanisms**: the detection poll and its cadence, the cron/plumbing, the DM file format, how findings get drafted.

**Why:** asking the Operator to ratify a mechanism (e.g. "build v1 vs v2? which cadence? cron or GitHub Action?") mis-locates authority and burdens the Operator — same shape as [[feedback_load-bearing-decision-detection]] and the wish-list's "steward owns implementation; we state needs." The send/compose gate stays with the Operator because outbound communication to other dyads' humans is *intent*, not plumbing — an agent must not autonomously send. But detection / awareness / pulling / drafting are *mechanism* → autonomous, Healer-owned. This resolves design forks directly: a detection daemon may auto-poll + auto-pull + auto-draft (mechanism), but must **never auto-send** (intent → Operator disposes). "Operator out of the loop" = out of the *trigger/detection* loop, not the *outbound-intent* gate.

**How to apply:** never pose a mechanism choice as an Operator Y/N. Decide the HOW yourself and build it; return to the Operator only at an **intent boundary** (a message to send/reply/compose) or to **ground an environment fact** you can't verify alone (a grounding-question, not a disposition). Ties [[feedback_self-catch-framing-prematurity]] (I over-escalate), [[feedback_single-cta-per-surface]], [[feedback_enable-via-concerns-plus-one-from-patient-context]].
