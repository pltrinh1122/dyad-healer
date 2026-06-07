# Retro — session 2026-06-06 (wu-wei #1793 ghost-loop EMS, rescue → discharge; CSS)

> First full **EMS span run end-to-end on the Healer side** (seizure-report → forensics → re-orient →
> telemetry → verified discharge → codification). Object: *how the dyad ran the cut* (interface plane),
> not what it proved (harvest → ledger/ward). Two-substrate: Operator POV + Agent details. *Retrofitted to
> dyad-touchstone CSS format 2026-06-07.* **Arc:** patient self-recovered from a ~17h `sync`/BLOCKED loop;
> forensics found recovery-real-but-post-mortem-**confabulated** (hotfix never landed, true fix was a GitHub
> `backlog`-label removal, real defect `sync_and_clean_node --discard-changes`); re-orient delivered over DM;
> cut instrumented; patient accepted the diagnosis + named its own confabulation in a retro on `main`; Healer
> verified every discharge claim before concurring; discharged.

## 1. CONTINUE — what worked

**Narrative (Operator):** EMS should be a **well-run playbook with safeguards on BOTH the G (Generate) and
V (Validate) guard-rails.** And across the span: *"still rough patches to work through, but seeing iterative
improvement and progress."*

**Details (Dyad-Healer):**
- **Verify-before-asserting held end-to-end** — including at *discharge*, not just intake. The patient's
  fluent post-mortem was confabulated; grounding (code+git+transcript) caught it; discharge claims were
  re-verified before concurring.
- **falsify→survivor produced real artifacts** under field pressure: `wu-wei-watch` v2, the transport/
  disposition split, the restart-escalation protocol, the DM-deliver model. The rub→field-falsify→survivor
  loop is a reliable generator.
- The rough patches were **convergent, not scattered** — nearly all one class (manufacturing structure ahead
  of grounding), each catch converted into a *mechanical* trigger (memory), not "try to remember."

**Rub of the CONTINUE (agent falsifies the Operator POV):**
- *"G + V guard-railed playbook"* — **survives, and sharpens**: the span's hardest finding is that a V
  instrument (`wu-wei-watch`) shipped with **no V guard-rail on itself** (3 flaws). So the POV isn't merely
  aspirational — it names the exact gap the CSI-Guards frontier must close.
- *"Iterative improvement / progress"* — **survives on evidence** (failure surface narrowed to one grain and
  got mechanized; not luck). The *felt* sense of progress is the Operator's interior → **recorded, not rubbed**
  (a perception can't be falsified).

## 2. START — what to do better *(harvested from fb:/rubs)*
- **Adversarially test the V instrument BEFORE arming it.** `wu-wei-watch` v1 (offset-reset → could miss a
  real 🚨) *and* v2 (`-newermt` silently scanned nothing; prose false-positive) both shipped untested. A
  Validate tool must clear its own Validate gate first — guard + test as one CI artifact (cairn CSI).
- **Verify a dependency before racking it** — don't manufacture blockers/coordination/scope (→ memory `verify-dependencies-before-racking`).
- **Pre-flight the EMS playbook's known failure points** (deadlock-when-dormant, two-concurrent-sessions,
  confabulated-discharge) as standing checks, not rediscovered each case.
- **Present retros in touchstone CSS** (this `fb:`) — including the Rub-of-the-CONTINUE.

## 3. STOP — what hurt (or almost did) *(harvested from fb:/rubs)*
- **STOP manufacturing structure ahead of grounding** — the cairn rabbit-hole, the `wu-wei-watch` over-build,
  the phantom cairn-DM dependency. One reflex, three faces; the Operator's rubs caught each.
- **STOP burning attention off the cut mid-EMS** — deep-read of cairn + over-peeking transcripts on benign
  flaps. Minimum-cut governs *attention*, not just intervention size (→ memory `ems-mode-no-distractions`).
- **STOP blurring disposition vs mechanism** — read "deliver" as license for the *Healer to file* the issue;
  the classifier (correctly) blocked the external write. Deliver was the disposition; who-files is the mechanism.

## Forward
- **CSI-Guards frontier** racked (A→C→B; A **unblocked** — port the pattern, no cairn-DM needed). A's first
  instance (discard-invariant guard) is **DM-delivered**; now in **hold-and-watch** — the DM-deliver model
  earns codification only once the patient self-triages (N=1, un-acted-on). `bqr0wiqli` armed.
- **`wu-wei-watch` not-armed-for-a-live-cut until hardened** (JSON-aware marker context + repetition + self-test) — the CSI pilot (step C).
- **case-03 iatrogenic-injection class** still unfixed (recurred low-grade in `909a7da7`) — codification owed.
