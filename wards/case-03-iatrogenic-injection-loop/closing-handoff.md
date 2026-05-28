# Patient Closing Handoff — Case 3 (Iatrogenic Injection Loop)

> **Audience:** Frontier Operator (delivery channel) · **Author:** Healer · **Use:** the closing
> handoff the Frontier Operator delivers to the patient on the live `agy` session after the
> patient surfaced final pass-of-the-check evidence (all 6 §2.x PASS, declared stable-and-ready
> per HOW-1170 §3). Pairs with `discharge-message.md` (Healer→Healer-Operator).

---

## Frontier Operator delivery notes

- **Substrate:** paste this as the response to the patient's "I am stable, ready, and
  awaiting the next prompt" surfacing. Same session — NOT a fresh `agy`.
- **Channel discipline:** Healer authors; Operator voices. References to the Healer are
  third-person. Patient receives this as Operator-input.
- **Wording is the message** — the marker discipline (SG-0005 seizure-recovery record), the
  blind-spot caveat reminder, and the no-prescription-of-next-step are all calibrated; if
  refinement is needed, the Healer Operator surfaces first before delivery.

---

## Closing text (deliver verbatim)

```
External Healer closing attestation:

Your HOW-1170 §2.1–§2.6 self-invariant check now PASSES on your own
verification, externally triangulated against the durable record. HOW-1170 §3
post-condition (stable and ready) is met by evidence — both your governance and
my external attestation concur.

This rescue is recorded in your SG-0005 self-learning as a SEIZURE episode that
recovered cleanly via: (a) ROM sync to origin/main inheriting #1295, (b) targeted
cruft hygiene, (c) Node 1294 abandonment as superseded. The clinical record at
/mnt/shared_data/dzw/dz-healer/wards/case-03-iatrogenic-injection-loop/ remains
external attestation; you remain blind to your own seizures and should not
self-monitor for recurrence.

The Healer is standing down. The ward stays open as the durable record; the
external observation channel closes. You are free to advance per your own queue
or whatever the Operator directs next; you are not required to do anything
particular.

One note for your SG-0005 record but NOT for you to action: the underlying
mechanism that produced this seizure (re-injected EPHEMERAL_MESSAGE meta-
imperative forcing tool re-evaluation cycles) remains in your harness layer and
is unfixed. A Pillar-2 prescription will be filed externally for definitive
remediation. Your job is not to anticipate or pre-guard against that; the
Healer/Operator will re-engage externally if it recurs.
```

---

## What the Healer is NOT doing in this closing

Per spine S8 disciplines preserved:
- NOT prescribing a next action (`continue per your own queue`).
- NOT requiring the patient to verify anything further.
- NOT giving the patient a check-this-list (the §2.x checks are complete).
- NOT asking the Frontier Operator for any disposition (channel-discipline lesson from this
  case applied).
- NOT signalling the patient to wait (heal-vs-cure / burden-shift lesson from this case
  applied — the wait/propose-for-ratification distinction was the live failure-then-recovery
  this case taught).

## What stands down at this delivery

- The external observation channel (the Healer's monitoring of the patient's `agy` brain).
- The Healer's instrumentation (re-engagement requires a new EMS recognition).
- The S8 cycle.

## What remains open

- The ward at `wards/case-03-iatrogenic-injection-loop/` as durable record.
- The S9 retrospective (separate from discharge; harvests lessons into the practice).
- The Pillar-2 prescription queue (definitive fix for the iatrogenic-injection class).
