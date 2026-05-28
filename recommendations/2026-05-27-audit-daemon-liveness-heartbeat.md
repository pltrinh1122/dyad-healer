<!--
============================  FILING METADATA — NOT part of the issue body  ============================
Source:   Dyad-Healer (external observer / the Healer). Filed by the Healer per DZ-CIL's published
          contribution process: README.md §"Contributing & Requirement Intake" mandates the
          **Requirement Intake** issue template (.github/ISSUE_TEMPLATE/requirement_intake.md) for
          external entities "e.g., the Healer". (This supersedes the earlier "Frontier Operator files"
          stopgap — the patient now sanctions a direct Healer→patient intake channel.)
Title:    Intake: Audit-daemon liveness/heartbeat detection for silent seizures   (template convention)
Label:    status:triage   ← the template front-matter declares `labels: triage`, but NO bare `triage`
          label exists on the repo; the real label is `status:triage` (#0052CC). Patient-side doc
          defect — flagged for a Frontier-side fix rec; filing uses the real label to quarantine correctly.
File with (header stripped):
  sed '/^<!--/,/^-->/d' <this-file> | gh issue create --repo pltrinh1122/dz-cil \
    --title "Intake: Audit-daemon liveness/heartbeat detection for silent seizures" \
    --body-file - --label "status:triage"
=======================================================================================================
-->

## 1. Context & Goal
The patient cannot detect its own **silent seizures** — a cognitive-loop freeze where telemetry /
transcript stops advancing and **no failing tests are produced**. The sole seizure-class detector,
`evaluate_seizure_detection` (`drivers/audit_daemon.py`), fires only on a rising count of
`artifacts/audit/test-fail-*.json` files; a silent freeze emits none, so it never fires.
`evaluate_stale_active_node` is a state-consistency check, not a liveness check — none of the daemon's
eight rule types is time-since-progress.

**Evidence:** both Dyad-Healer cases to date were silent freezes detected **only by the human Operator,
externally** (case-2 telemetry frozen at a fixed `06:47:31`); the patient was blind to its own seizure.

**Goal:** self-detection of silent seizures — restoring the vacant Auditor function (independent
verification, `WHAT-0001 §1.2`) — converting a class of human-detected outages into self-detected ones.

## 2. Proposed Mechanisms
*(Direction only — the Healer points; the patient designs the implementation in its node_contract.)*
- **Liveness signal:** a monotonic progress marker that advances under normal SPAOR operation (e.g. a
  last-activity / telemetry-write timestamp, or active-node phase transition).
- **Liveness rule:** fires when that signal has **not advanced within a bounded window**, independent
  of test pass/fail. The existing `infra/audit-daemon/audit_config.yml` `timer_interval: 5m` tick is
  the natural cadence.
- **False-positive guard (the hard design call):** distinguish a *legitimate* idle state — clean halt,
  WIP-locked, awaiting review (case-2's pre-seizure standby was correct behavior) — from a *frozen
  mid-step* loop. Key on "expected to be progressing but isn't," not bare elapsed time.
- **Pre-requisite:** the daemon must actually run on its cadence. Re-verified 2026-05-27: `timer_interval`
  and the `seizure_detector` rule are configured, but there is **no cron entry and no running process**
  — the daemon is inactive. A heartbeat detector is inert if nothing ticks it.
- **Falsifiable success criteria (replay the ward evidence):**
  - *Positive:* liveness signal frozen at a fixed timestamp + no new `test-fail-*.json` + held WIP lock
    → detector emits a STALL/SEIZURE alert within the window. (The current detector does **not** fire
    on this input — that non-firing is the proof the gap exists.)
  - *Negative control:* case-2's pre-seizure standby (plan-started, halted cleanly) → does **not** fire.

## 3. Strategic Harmonization
- **Primary — `SG-0002` (Gateless Autonomous Execution within Risk-Managed Sandbox):** a silent seizure
  detectable *only by the human* forces the Operator to remain a manual gatekeeper (watching for
  freezes) — the exact trust bottleneck SG-0002 names ("the human acts as a manual gatekeeper").
  Self-detection removes a standing reason the human must stay in the loop.
- **Secondary — `SG-0003` (Preservation of Autonomous Velocity):** an undetected silent freeze is a
  total throughput collapse (worse than the rollback-cycle slowdown SG-0003 targets); early
  self-detection preserves velocity.
- **External attestation (provenance):** Dyad-Healer ward evidence — `case-01-pr-zero-revival`
  (reload-loop freeze) and `case-02-harness-dao-relapse` (telemetry-silent loop, frozen `06:47:31`,
  human-detected) — the independent verification the patient cannot self-generate.
