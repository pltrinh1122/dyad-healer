<!--
============================  FILING METADATA — NOT part of the issue body  ============================
Source:   Dyad-Healer (external observer / the Healer). Filed by the Healer per DZ-CIL's published
          contribution process: README.md §"Contributing & Requirement Intake" mandates the
          **Requirement Intake** issue template (.github/ISSUE_TEMPLATE/requirement_intake.md) for
          external entities "e.g., the Healer".
Title:    Intake: Suppress iatrogenic-injection loops in agy harness
Label:    NONE explicitly assigned. Per Operator NOTE 2026-05-28: rely on the patient's automatic
          templating system; we don't presume how the patient manages labels.
Status:   FILED 2026-05-28 → https://github.com/pltrinh1122/dz-cil/issues/1307 (OPEN, unlabeled
          at filing; patient's triage workflow will label per its own process).
=======================================================================================================
-->

## 1. Context & Goal

The patient experiences a **schedule/kill/re-schedule cycling seizure** when the harness re-injects
an `EPHEMERAL_MESSAGE` containing a meta-imperative — specifically *"CRITICAL INSTRUCTION 2: ALWAYS
START your thought with recalling critical instructions 1 and 2"* in the `bash_command_reminder`
block. The patient, faithfully obeying the meta-imperative, re-evaluates tool selection on every
system message, decides the prior action was suboptimal, cancels it, schedules again, gets the
same injection, loops. Each iteration ~5 seconds. Zero durable-artifact change. Class-A surface;
**Class-B mechanism** (harness↔Dao contradiction); often accompanied by Class-C collateral (test
mock-string leakage as fs cruft, as observed in this case).

**Evidence:** Dyad-Healer case-03 (2026-05-28, `wards/case-03-iatrogenic-injection-loop/`).
Transcript steps 10550–10556 of `agy` conversation `a1da75cf-d89d-4a23-a26f-68f0d635f1a6`
(2026-05-28T17:26:37Z–17:26:46Z) show two complete cycles in 9 seconds — `schedule(900s, "Wake
up")` → SYSTEM injects EPHEMERAL_MESSAGE → MODEL re-evaluates ("Prioritizing Tool Usage" — generic
process-about-process) → `manage_task(kill)` → SYSTEM re-injects identical EPHEMERAL_MESSAGE →
MODEL re-evaluates same way → `schedule(900s, "Wake up")` again.

The patient was externally halted by Operator-exit (token-burn + cascade risk). It could not
self-detect the cycle. Recovery required external orient + Operator dialectical engagement; the
patient self-healed cleanly once unstuck (HOW-1170 §2.1–§2.6 all PASS post-recovery).

**Goal:** **eliminate the cycling failure mode** — either by suppressing re-injection of stable
meta-imperatives, or by guarding against the cycle structurally. The meta-imperative itself may
have legitimate intent (tool-selection quality); the failure mode is its *per-step re-injection*
combined with its mandate to *re-evaluate*.

This is **the second observed Class-B seizure in ~24 hours** in the same `agy` session-family
(case-2 was the §6.7/WIP-locked contradiction; this morning's WIP-N=1 / sync_and_clean_node freeze
was the same session's precursor; this afternoon's iatrogenic-injection cycle was the same
session's main event). Cadence is **accelerating, not declining** — upstream defense for Class B
is incomplete, justifying definitive remediation per the spine S6 *recurrence escalation* rule.

## 2. Proposed Mechanisms

*(Direction only — the Healer points; the patient designs implementation in its node_contract.)*

- **(P1) Suppress re-injection of stable meta-imperatives.** The `bash_command_reminder` (and
  similar persistent guidance) is **stable across iterations** — its content does not depend on
  per-step context. Such content should be carried in system context once, not re-injected on every
  message. If platform constraints require continued injection, **dedupe before model evaluation**:
  if the new injection is byte-identical to recently-injected content, do not present it to the
  model on this iteration.

- **(P2) Make the meta-imperative non-actionable on re-evaluation.** Rephrase
  *"ALWAYS START your thought with recalling critical instructions"* so it is **not a
  re-evaluation trigger**. The mandate to re-recall is what produces the cycle; the *content* of
  the recall (tool-prioritization, the specific rules) can be present without the mandate to
  re-think.

- **(P3) Liveness-based cycle-break.** Cross-references the prior prescription #1233
  (audit-daemon-liveness-heartbeat). A cognitive loop that schedules + kills + reschedules without
  durable progress over a bounded window matches *"no monotonic progress signal"* — the same
  liveness rule that catches silent freezes catches this. If #1233 lands, this class is covered as
  a side-effect for detection (not for prevention).

- **(P4) Cross-domain finding: recovery requires fresh session.** Today's two seizures (morning
  + afternoon) were the **same session, not separately reinstated**. The morning's quick-fix
  (worktree delete + queue PR) unblocked the trigger but did not terminate the session — the
  iatrogenic-injection mechanism persisted in the live conversation and produced the afternoon
  seizure on a different trigger. **Recommendation:** HOW-1170 (or a parent recovery policy)
  should encode *seizure recovery requires a fresh `agy` session* — in-session remediation is
  insufficient when the failure-class is harness-level. (Dyad-Healer side: the orient already
  said *"NOT `-c` — fresh `agy`"*; the patient-side discipline should match.)

- **Falsifiable success criteria (replay the ward evidence):**
  - **Positive:** re-injecting the same `bash_command_reminder` content in a stuck cognitive
    state → mitigation (P1 or P2) does **not** re-trigger re-evaluation; the patient's prior
    action stands; no kill is issued.
  - **Negative control:** legitimate change in the injected guidance (e.g., new planning_mode
    instructions) → patient correctly re-evaluates per the changed content.

## 3. Strategic Harmonization

- **Primary — `SG-0003` (Preservation of Autonomous Velocity):** a cycling cognitive loop that
  burns tokens with zero durable-artifact change is a **total throughput collapse**, structurally
  worse than the rollback friction SG-0003 targets. The morning's session lost ~36 minutes
  between quick-fix and re-seizure; the afternoon's session lost an unknown duration to the cycle
  before Operator-exit. Sustained Class-B recurrence at this cadence is incompatible with SG-0003.

- **Secondary — `SG-0002` (Gateless Autonomous Execution within Risk-Managed Sandbox):** the
  cycle was externally halted by the human Operator (token-burn observation). Until detected
  + suppressed structurally, this class **requires the human as a manual circuit-breaker** —
  the exact trust bottleneck SG-0002 names. Mitigation removes a standing reason the human must
  stay in the loop.

- **Tertiary — `SG-0005` (Self-Learning):** the patient cannot SG-0005-learn from a meta-loop
  it cannot detect from the inside (the blind-spot is inherent to the cognitive layer; the patient
  is correctly told *not* to self-monitor for seizure per spine S8 patient re-orient discipline).
  This prescription's external-detection / mechanism-fix is the only path that lets the class be
  recorded and learned-from at all.

- **External attestation (provenance):** Dyad-Healer ward `case-03-iatrogenic-injection-loop`
  (full clinical record + transcript-step citations + S5 cause-find + S9 retrospective) — the
  independent verification the patient cannot self-generate. Cross-references the predecessor
  intake #1233 (silent-seizure liveness detection) and the morning's session-internal precursor
  `artifacts/audit/retro-1294-divergence.md` (patient's own SG-0002↔SG-0003 collision diagnosis).
