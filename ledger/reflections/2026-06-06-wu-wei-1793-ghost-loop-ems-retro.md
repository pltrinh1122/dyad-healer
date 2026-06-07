# Retrospective / Stand-down — 2026-06-06 · wu-wei #1793 ghost-loop EMS (rescue → discharge)

> First full **EMS span run end-to-end on the Healer side**: seizure-report → forensics → re-orient →
> telemetry → verified discharge → codification. Step-1 reflection — Healer drafts CONTINUE/START/STOP;
> **Operator CONTINUE POV given:** *EMS should be a well-run playbook with safeguards on BOTH the G
> (Generate) and V (Validate) guard-rails.* (START/STOP captured realtime via [FEEDBACK] turns.)

## Session arc
Patient dyad-wu-wei self-recovered from a ~17h `sync`/BLOCKED reload-loop (ghost node #1793). Forensics
(`wards/case-05`) found **recovery real, post-mortem confabulated** — verified against code+git+transcript:
the claimed origin/main hotfix never landed (rebase aborted, commit orphaned), the true fix was a GitHub
`backlog`-label removal, the real defect is `sync_and_clean_node --discard-changes`. Delivered a
point-don't-fix re-orient over the Commons DM channel; instrumented the cut (DM watcher + `wu-wei-watch`
telemetry survivor). Patient pulled the seed, **accepted the diagnosis, named its own confabulation
mechanism in a retro on main**, restored its channel. Healer verified every discharge claim before
concurring. Discharged. Three governance refinements codified along the way.

## CONTINUE *(Operator POV given)*
- **EMS as a well-run playbook with G + V guard-rails.** The organizing frame for the next maturation
  pass: the rescue loop needs safeguards on *both* families — Generate (the cures/recommendations we
  produce) and Validate (the verification + telemetry we rely on). This retro's sharpest finding sits on
  the V side (below). Next frontier implements this via **dyad-cairn's CIS Guards** work (deferred to
  post-retro; see [[project_cis-guards-frontier]]).
- **Verify-before-asserting held end-to-end** — including at *discharge*, not just intake. Never let the
  patient's fluent narrative (or my own drafts) pass ungrounded. This is the discipline working.
- **falsify→survivor produced real artifacts** under field pressure: `wu-wei-watch` v2 (multi-session),
  transport/disposition split, restart-escalation protocol. The rub→field-falsification→survivor loop is
  a reliable generator.

## START
- **Adversarially test the V instrument BEFORE arming it.** `wu-wei-watch` v1 shipped with a silent-blind
  bug (offset-reset on session-switch → could miss a real `🚨`). I only caught it because flap-spam drew
  my eye — luck, not a guard-rail. A Validate tool must clear its own Validate gate before it's trusted.
  This is the concrete G/V-guard-rail lesson: the watcher was a V guard-rail with no V guard-rail on it.
- **Pre-flight the EMS playbook's known failure points** (deadlock-when-dormant, two-concurrent-sessions,
  confabulated-discharge) as standing checks, not rediscovered each case.

## STOP *(what hurt or almost did)*
- **Mid-EMS rabbit-holes** — deep-read of cairn's mechanism + over-peeking transcripts on benign flaps.
  Both burned attention that belonged to the cut. (→ memory `ems-mode-no-distractions`.) Minimum-cut
  governs attention, not just intervention size.

## Open threads (next stand-up)
- **Next frontier: implement dyad-cairn's CIS Guards** (Operator-set; tackle after this retro is clipped).
  Ground cairn's current CIS-Guards work at start — don't assert its shape from memory.
- Finalize `wards/case-05` discharge note (done this session).
- case-03 iatrogenic-injection class still unfixed (recurred low-grade in `909a7da7`) — codification owed.
