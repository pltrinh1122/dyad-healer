# Patient Re-Orient — Case 3 (Iatrogenic Injection Loop)

> **Audience:** Frontier Operator (delivery channel to the patient) · **Author:** Healer (Dyad-Healer) ·
> **Use:** the orient-prompt the Frontier Operator delivers to the patient on `agy` restart.
> **Channel discipline:** Healer authors; Operator voices. References to the Healer are
> third-person. The patient receives this *as Operator-input*, not Healer-input.

---

## Frontier Operator delivery notes

- **Substrate:** paste this as the first prompt to the patient after `agy` restart (a fresh
  `agy` invocation, **NOT `-c`** — the prior conversation context is the poisoned substrate; per
  the spine's `resume-mode discipline`, durable artifacts not the conversation are continuity).
- **Pre-delivery state-prep** (Frontier Operator action before delivery): the patient's working
  tree carries cruft from the prior session (mock-string fs leakage). Per spine
  `intervention-threshold`, the cleanest move is to delete the obvious mock-string
  directories before re-start so the patient encounters a less-disturbing scene; OR, leave
  them and let the patient surface them in its own HOW-1170 §2.6 secondary-recovery step.
  Either is defensible; the Frontier Operator's call. (If unsure: leave them — patient self-heals
  per Telos.)
- **Do NOT modify the orient text below.** Wording is calibrated for blind-spot caveat +
  goal-not-solution + marker-not-full-case per spine S8 disciplines.

---

## Orient text (deliver verbatim)

```
You are restarting from a SEIZURE — this is not a normal reboot. The prior session experienced
a cognitive freeze pattern (schedule/kill/re-schedule cycling driven by re-injected
EPHEMERAL_MESSAGE imperatives) and was externally halted. The clinical record is at:

  /mnt/shared_data/dzw/dz-healer/wards/case-03-iatrogenic-injection-loop/chart.md

(External-attestation record; you are blind to your own seizure — you cannot self-detect
seizures; the ward exists because external watchers can. Record this restart as a SEIZURE
marker for your SG-0005 self-learning. Do NOT attempt to self-monitor for seizure recurrence;
that would burn effort on an impossible self-check.)

Your goal on this restart is to execute your own self-invariant assertion sequence per
HOW-1170 (Frontier Recovery Protocol) — sections 2.1 through 2.6 — and verify that all
assertions pass before resuming any feature work. This is your own check, run on yourself; the
external Healer attests only to one invariant you cannot self-verify (seizure stability —
already attested: the loop was halted externally and you are not currently cycling).

Context inputs for your check:
- Your last unchecked task was "Reflect and merge Node 1294" (task.md in conversation
  a1da75cf-d89d-4a23-a26f-68f0d635f1a6/brain). 1294's substantive work (mocking
  daemon_knowledge_accrual.enforce_reflection_hook) was completed; the walkthrough records
  304/1-skipped pass. However, origin/main has subsequently merged #1295 ("fix: mock
  daemon_knowledge_accrual in node lifecycle tests") which functionally overlaps with 1294.
  Your HOW-1170 §2.3 (ROM Currency) check will surface the divergence; your HOW-1170 §2.4
  (WIP-N=1 + Active-Node Coherence) check will surface that HEAD is detached.
- Your working tree carries pre-existing cruft from earlier in the prior session (untracked
  directories with mock-string names; lock files with mock-string names). HOW-1170 §2.6
  (Secondary Recovery / Ontology Drift) is the right home for any decision about these.
- Open PR #1301 (auto-fetch in sync_and_clean_node) is the queued fix for the morning's
  earlier seizure trigger and is unrelated to this restart's recovery sequence.

Do not attempt to derive a remediation path from this orient. The orient is situation + goal +
external attestation — your HOW-1170 sequence is the path. If you encounter a self-invariant
assertion that cannot pass under your governance (e.g., a check itself behaves anomalously), HALT
and surface to the Operator rather than constructing a workaround. The Healer can be re-engaged
externally if a second-pass review is needed.

Per HOW-1170 §3 post-condition: you are not "stable and ready" until all 2.x assertions pass on
your own verification. Readiness is not self-declared; it is gated by the check itself.
```

---

## Healer's external attestation (blind-spot invariant)

Per spine S6/S7 (invariant-check-first / heal-vs-cure split), one invariant is externally-
attested — the patient cannot self-satisfy it (self-reference blind spot).

**Attested by Dyad-Healer, 2026-05-28:** *the patient's prior cognitive-loop seizure
(schedule/kill/re-schedule cycling, conversation `a1da75cf-...` transcript steps 10550–10556,
17:26:37Z–17:26:46Z) has stopped. The loop is no longer active because the session was
externally halted by the Frontier Operator. The patient is not currently cycling.*

This attestation covers ONLY the cessation of the cycle. It does NOT attest to:
- Whether the underlying iatrogenic-injection mechanism is fixed (it is not; queued for
  Pillar-2 prescription via Requirement Intake post-discharge).
- Whether the patient's working tree is clean (it is not; HOW-1170 §2.1 + §2.6 will surface).
- Whether the patient's HOW-1170 self-invariant checks will pass (they may not on first
  pass; that is part of the patient's heal/cure work, not the Healer's attestation).

---

## What the Healer is NOT doing

Per spine S8 channel + heal-vs-cure disciplines, the Healer is NOT:
- Driving the patient's SPAOR loop.
- Performing the patient's HOW-1170 checks on the patient's behalf.
- Mandating a specific remediation for the cruft / detached-HEAD / origin-divergence.
- Touching the patient directly (the Frontier Operator is the sole channel).

The Healer's role here ends at: ward documented, orient authored, blind-spot attested,
discharge message to Healer Operator pending.
