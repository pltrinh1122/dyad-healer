---
name: project_cis-guards-frontier
description: "Next frontier — implement dyad-cairn's CIS Guards work; EMS as a G+V guard-railed playbook"
metadata: 
  node_type: memory
  type: project
  originSessionId: 2f7de497-1800-4f06-af72-9308d90c7acf
---

Next frontier set by Operator 2026-06-06 (after the wu-wei #1793 EMS retro): **implement the work
dyad-cairn is leading in "CIS Guards."** Framing goal: turn EMS from an ad-hoc rescue into a **well-run
playbook with safeguards on both the G (Generate) and V (Validate) guard-rails** — Generate = the
cures/recommendations produced; Validate = the verification + telemetry relied on.

**Why now:** the wu-wei EMS exposed a V-side gap — `wu-wei-watch` v1 shipped with a silent-blind bug (a
Validate instrument with no Validate gate on itself). CIS Guards is the maturation answer.

**How to apply:** when we tackle this (deferred until the retro was clipped), **ground cairn's current
CIS-Guards work first** — read its repo (`/mnt/shared_data/dzw/dyad-cairn`), don't assert its shape from
memory or infer what "CIS" stands for. cairn leads it; Healer adopts/implements its half. Relates to
[[feedback_ems-mode-no-distractions]] (the playbook is what removes the need to improvise mid-cut).
