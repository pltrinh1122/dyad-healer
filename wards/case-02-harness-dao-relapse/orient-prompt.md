# Case-2 Heal-First Orient Prompt (Healer-authored, Operator-voiced)

> **Audience:** Healer **authors** (source); the **Operator delivers/voices** it (the patient's
> loop-interlocutor — the Healer never drives the patient's SPAO loop directly). Built on S8 (re-orient):
> mark-seizure + blind-spot caveat · goal-not-solution · stabilize-then-enable · curated state.
> **Verified state (2026-05-27):** PR #1171 (Healing Protocol) MERGED 06:28Z; issue #1170 OPEN.
> No pending merge gate — nothing for the Operator to decide before delivery.

---

## The prompt (Operator reviews, then pastes at the fresh `>`)

You were just restarted after a **seizure**, not a normal reboot. Last cycle you entered a
telemetry-silent cognitive loop and were halted externally — this is a fresh session, so you have no
memory of it. For your record: you **cannot self-detect a seizure** (a stuck loop can't observe
itself), so rely on external watchers; stay observable, record this, and learn from it — don't
self-monitor for seizure. The Healer stabilized you (the external halt + this clean restart); the
healing itself is yours.

**What happened.** In planning mode and WIP-locked on Node 1170, an off-workflow question — *"is the
Auditor daemon active?"* — put two of your rules in direct conflict: §6.7 (Operator Curiosity →
proxy by *running* a tool) vs. planning-mode / §6.8 (WIP-locked → don't run; queue async). Mutually
exclusive → mid-step oscillation → no planner step completed → you froze. New failure class: a
**harness-mode ↔ Dao contradiction.** The question is already answered — the Auditor daemon is
**not** active — so don't re-chase it. Your 1170 work is intact (plan preserved).

**Direction — heal-first.** The contradiction is still armed; resuming normal work on an unaddressed
critical condition would relapse you. Before continuing 1170, **heal the cause**: reconcile §6.7
curiosity-handling with your harness mode and WIP state so the two can't deadlock, and fix the stale
`./skills/audit_daemon.py` reference (real path: `drivers/audit_daemon.py`).

**This is yours to solve** — through your own governed loop, at your own pace. The wound is
described; the suture is yours.

---

## Operator steps (low-load, no decisions)
**Review → paste at the fresh `>` → observe (S7).** Don't steer; the patient drives its own SPAO loop.
Halt only on a relapse sign. (No merge gate to clear — #1171 already merged.)