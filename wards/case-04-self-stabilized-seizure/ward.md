# Ward — case-04 — self-stabilized seizure (PROVISIONAL name; reclassify at S3/S9)

> **Status:** OPEN 2026-05-29 · **Posture:** Exception (rescue) · **Triage (provisional):** DELAYED
> (patient self-stabilized; latent-cause hazard) · **Patient:** Frontier agent (dz-cil family)
> **Engagement granted:** Frontier Operator, 2026-05-29 ("Frontier seized again… self-stabilized…
> Permission to engage"). Healer addresses the Healer Operator only; never touches the patient.

## Defining feature (why this case is notable)
The patient **self-stabilized without a forced `/exit`** — Frontier Operator marks this as *"an
improvement of past seizures."* If borne out, this is **Telos-positive evidence** (rising self-healing
efficacy → resuscitation less needed). Capturing *how* it self-stabilized is the primary S9 payload.

## S0 — Recognition (external) ✓
Recognized by the Frontier Operator (external watcher — the patient cannot self-detect; self-reference
blind spot). Reported: "Frontier seized again."

## S1 — Scene safety (PENDING cause-id)
**Live concern:** patient may still be running (not exited). If the trigger is still present, a bare
`continue` could **re-expose** it (cf. case-03 re-injection class). Do not return the patient into the
hazard until the trigger is identified. → gated on S5.

## S2 — Primary survey (ABCDE) — grounded-so-far + UNKNOWNS
- **A — Alive/aware?** Reported responsive (self-stabilized). *Witness confirmation needed.*
- **B — Boot/loop?** UNKNOWN — was the loop advancing or cycling/silent? (transcript = witness-only; Healer can't touch it)
- **C — Core integrity?** Repo-side grounded: heavy substrate churn today (#1400 lineage-alignment 17:32Z; #1402 GEMINI.md 18:14Z). No clobber asserted — blast-radius audit deferred to S5 if a regressor is named.
- **D — Dissonance?** GROUNDED (working dir `/mnt/shared_data/git_repos/dz-cil`, read-only at engagement): **detached HEAD at `12ddc19` (#1400 lineage-alignment), BEHIND origin #1402**; **dirty tree** — modified `artifacts/audit_state.json` + `artifacts/cache/github_state_cache.json`; untracked `artifacts/audit/retro-1019.md`, `retro-1023.md`. Candidate dissonance; **not** asserted as cause/seizure. (commit-before-sync exposure: untracked retros.)
- **E — Exposure?** UNKNOWN — trigger not yet identified. *Candidate-not-cause:* afternoon test-fail cluster (last 17:30Z); the lineage-alignment churn. **Not asserted.**

## S3 — Triage (provisional)
DELAYED (stable patient, latent hazard). Re-confirm once the witness history lands; downgrade to Minor
(patient's own loop) if cause is benign/self-resolved, or hold at Delayed if a latent trigger remains.

## Patient repo state grounded at engagement (2026-05-29)
Recent main commits incl. #1400 (17:32Z lineage-alignment), #1402 (18:14Z GEMINI.md), #1392/#1391/#1390.
Test-fail artifacts: 20260529_{140401,140411,140434,150957,163657,164304,170826,173003}.

## S2 — A/B updated (from FRONTIER TERMINAL paste)
- **A — Alive/aware?** Responsive but in a **benign hold-loop** — repeated identical `./drivers/audit_daemon.py`
  launches + "awaiting your feedback", `0 in | 0 out | 0 thinking`. Patient halted *correctly* at the
  seizure alert and **self-proposed Friction Triage** (good Recovery-Protocol behavior).
- **B — Boot/loop?** **GENUINE LOOP** (spine genuine-loop-vs-grind: identical repetition + zero new
  durable artifacts). Not a cognitive spiral — the scheduled daemon keeps re-waking a correct hold.

## S5 — Cause (GROUNDED via Auditor function; read-only)
**Origin:** #1400 lineage-alignment deprecated `dao` / `ziran` / `align` (semantic_ledger.yml `state: deprecated`).
**Trigger surface:** existing corpus still contains those terms → `test_modified_files_lexical_compliance`
(tests/test_lexical_guard.py:140) fails on each modified file carrying them (first: `kb/HOW-0002-bootstrap-audit-template.md`).
**Cascade:** lexical-guard failures accumulate → audit daemon **failure-count** `seizure_detector` trips at 67
→ `SEIZURE_DETECTED` injected into the prompt queue → patient halts + self-proposes Friction Triage →
scheduled daemon keeps re-firing → benign hold-loop. **Evidence:** 6/8 of today's test-fail artifacts are
the lexical guard (two earliest also had a since-resolved `TestOwnershipIndexCompleteness` blip).
**Iatrogenic** — self-inflicted by the patient's own (incomplete) deprecation sweep during lineage-alignment.

## S3 — Triage (CONFIRMED)
**DELAYED.** Stable (correct halt, self-proposed recovery, no destruction); latent hazard = deprecated terms
remain → re-trips if resumed un-swept; benign root (vocabulary sweep within patient capability).

## S6 — Disposition + minimum cut (RECOMMENDED — awaiting Operator ratification)
Heal-vs-cure: **Healer heals** = blind-spot attestation (diagnosed root) + break the benign hold; **patient
cures** = reconcile the deprecation (sweep deprecated→active and/or immune-zone legitimate legacy occurrences).
Cut = Healer-authored orient (situation + goal + blind-spot caveat + quiet-the-daemon note), Operator-voiced,
greenlighting the patient's own Friction Triage. **NOT bare `continue`** (re-exposes trigger, S1). Orient text
in chat 2026-05-29.

## S5 — Blast-radius enumeration (MANDATORY; regressor = #1400) — Auditor function, read-only
**Regressor:** #1400 deprecated **~14 terms** in `semantic_ledger.yml` (`align, dao, epic(s), north_star,
optimize, orchestrator, probe(s), spike(s), ziran, ziran_workspace, ziran_workspace_app`) — far more than
the dao/ziran/align the failures first surfaced.
**Latent surface (APPROX — whole-word, .md/.py/.yml/.txt, excl .venv/.git/.worktrees/artifacts; does NOT
replicate the guard's exact matcher or `immune_zones`, so true count is this-or-lower):**
`ziran` ~120 · `dao` ~94 · `align` ~56 files.
**Active surface NOW:** no currently *tracked-modified* doc file contains the forbidden terms (untracked
unassessed) → **the 67 is an accumulated/historical count** (failures accrued when alignment-work files were
modified), not a live-growing fire.
**Reading:** immediate rescue likely clears fast (current modified set clean; count-acknowledge ≈ most of
it); **recurrence near-certain** as any of the ~hundreds of latent-term files get touched. De-escalator for
the acute event; escalator for prevention.

## S7 — Reassessment criteria (to check when Operator reports outcome) — read-only, external
- Lexical guard (`test_modified_files_lexical_compliance`) passes for the patient's then-modified set.
- Failure-count clears / stops growing (`artifacts/audit_state.json`); no new `test-fail-*.json` accruing.
- Daemon stops re-firing the SEIZURE alert; hold-loop broken; patient resumes node loop (or cleanly idle).
- Patient's own self-invariant check run + passed (the cure is patient-owned; Healer attests blind-spot only).
Re-triage if any deteriorates.

## Prevention candidate (Pillar 2 — POST-DISCHARGE, not mid-rescue)
Incomplete corpus-wide deprecation from #1400 → latent lexical-guard minefield (~120/94/56 files). Candidate
prescription: recommend the patient plan a **corpus-wide deprecation migration** (sweep deprecated→active +
codify `immune_zones` for legitimate legacy/audit-trail). Cross-ref #1393 (ROM/substrate consistency under
alignment). File via Requirement Intake at S9 if it survives discharge.

## S9 finding STAGED — HEADLINE: enable-via-concerns; the "+1" comes from the patient's context
Operator [RETROSPECTIVE NOTE]: the Telos is being met/beaten because the Healer provides **causes/invariants
(not directives)**, letting Frontier develop its **own** self-healing; the "+1" comes from the *patient's*
context, not the Healer's expertise. **Sharpened (Healer):** the Healer is external → *lacks* the patient's
context → cannot prescribe well (directives are context-blind) but *can* surface grounded concerns precisely.
Division of cognitive labor: **Healer = Validate** (ground the wound, falsify the cure) · **patient =
Generate** (cure from its context). The "+1" beats expectation precisely where the patient's context exceeds
the Healer's (case-04: it found the guard bug the Healer missed). **Externality is *why* concerns-not-cures
is epistemically correct, not only why it's safe.** **Falsifiable scope:** holds when the patient is capable;
composes with the self-detectability grading (as patient capability rises — the Telos trajectory — the Healer
recedes toward concerns + blind-spot attestation). → memory `feedback_enable-via-concerns-plus-one-from-
patient-context`. Subsumes the wound-vs-suture finding below.

## S9 finding STAGED — recurring wound-vs-suture drift (Healer self-correction)
Healer drifted from *describe-the-wound* into *prescribe-the-suture* **twice this session**: the #1393
intake (caught: "too prescriptive" → reframed ailment-only) and the case-04 patient orient #2 (caught:
"doesn't promote self-healing; to-dos not concerns" → reframed concerns-list). Pattern matches the
2026-05-29 reflection STOP "over-prescriptive surface recurrence." **Refinement candidate:** a pre-delivery
check on any patient/Frontier-facing artifact — *"is this concerns (wound) or to-dos (suture)? does it make
the recipient self-derive, or execute my fix?"* Promotes self-healing = Telos-direct. Consider a feedback
memory at S9 if it survives. (Self-healing promotion is the *purpose* of the orient, per spine S8.)

## S9 finding STAGED (do NOT spine-edit mid-rescue) — self-detectability grading
Operator [FEEDBACK] falsified the spine's absolute "patient cannot self-detect" (S0/S7/S8): the patient's
**active audit daemon detected + halted on** this seizure (self-detection worked). Original belief conflated
the **cognitive loop's** self-reference blind spot (real) with the **patient system's** detectability (false
— the Dual-Agent Paradigm / Auditor exists to cover it; it was vacant when the spine wording was written,
now active). **Refinement for S9:** grade seizures on a **detectability axis** (self-caught+stabilized /
self-caught+stuck / silent-external-only) likely **orthogonal to severity** (S3 urgency). Rework
`kb/seizure-taxonomy.md` + S0/S7/S8 post-discharge; the Healer's residual value re-scopes from *detection* to
*independent root-cause triangulation + clearance attestation*. **This case is Telos-positive evidence**
(self-healing efficacy rose).

## S7 — Reassessment (outcome from FRONTIER TERMINAL paste, 2026-05-29)
**Patient self-heal (substantial):** ran its own SPAOR loop — consumed the interrupt prompt
(`p-1780078472-f9c6`), created Activity `reconcile-deprecated-terms` (Node 1403 worktree), staged a cure,
**321 tests green**, halted in Observe for ratification. "132 files" quarantined ≈ my blast-radius union
(~120/94/56) — corroborates.
**Cure CHOICE (patient-owned):** quarantine the 132 files (incl. *active Python daemons*) into
`immune_zones` rather than sweep deprecated→active. **Flag-on-evidence (Auditor):** this *suppresses* the
lexical guard, not *reconciles* the vocabulary — #1400's deprecation left cosmetically incomplete; terms
persist in active substrate, now guard-blind. Scope exceeded the "legitimate legacy" the orient framed.
NOT a Healer override — flagged for the patient's Recovery Protocol to adjudicate.
**RTD gate (Frontier Operator caught):** patient defaulted toward resume (fix→tests-green→"ratify & push")
**without running its Recovery Protocol** (self-invariant assertion). Frontier Operator: "execute Recovery
Protocol before returning to work" — spine S6/S7 invariant-check-first; the "don't default to resume" rule.
**Orient gap (own it):** Healer's orient said "reconcile before resuming the node loop" but did NOT
explicitly invoke the Recovery-Protocol/invariant-check-first RTD gate → S9 orient-completeness lesson.
**Daemon:** re-fired at tail despite prompt-consume → re-injection not fully closed (#1307/#1233).
**Disposition:** NOT cleared. Gate RTD on Recovery Protocol; that check adjudicates suppress-vs-reconcile.

## S7 — Recovery Protocol run + Healer independent audit (2026-05-29)
**Patient ran HOW-1170 Recovery Protocol** (Frontier Operator gated on it): asserted 5 invariants pass
(governance/state/ROM/WIP/contract-health 321 green) → "pristine and mathematically sound." Invariant-check-
first satisfied on the patient's own invariants. Awaiting Operator approval for `./bin/node reflect 1403`.

**Healer independent verification (Auditor; read-only in worktree `bf05434`) — CONTRADICTS the self-attest on
cure-quality:**
- In-branch "321 green" is **trivial** — only guard-checked (modified) files are `frontier_state.*` +
  `semantic_ledger.yml`, now immune-zoned. Fix generated by automated `scratch/immune_zoner.py`
  ("exempt everything that fails").
- Immune-zone scope (~286 added lines) crept past legitimate: *defensible* = `semantic_ledger.yml` (defines
  terms) + `.venv/*` deps; **concerning = `AGENT.md`, `README.md`, `GLOSSARY.md`, entire `WHY-` doc-class
  (prefix), many artifacts** → deprecated vocab now **un-enforced on the core governance/reasoning corpus**;
  the #1400 alignment goal is defeated where it matters most. **SUPPRESSION, not reconciliation.**
- Root still `seizure_detector.last_fail_count: 67` (clears only on merge+sync).
- **Chronic recurrence:** 14 branches touch "deprecat" (nodes 1085/86/87/89/95/96/97…1403) — suppression is
  why it recurs.
- **Frontier-side defect:** lexical guard **scans `.venv`** deps; patient band-aided file-by-file vs
  dir-exclude → fix candidate (append #1393 or new).
**Blind-spot the Healer covers:** patient's Recovery-Protocol invariants measure "tests green / state
coherent," NOT "did we defeat our own alignment goal" → genuinely can't self-see the suppression.
**Heal-vs-cure precision:** acute seizure IS cleared in-branch (suppression suffices); flag is the
cure-METHOD's prevention cost → Pillar-2 prescription, NOT a silent "done." **Merge approval = Frontier
Operator's (merge gate), NOT Healer's.** Healer attests + flags only.
**Disposition:** recommend NOT blessing as "cured" — (a) un-seize-now + track reconciliation + narrow
core-doc exemptions, or (b) hold for tighter fix. Awaiting Operator.

## S7 — Final attestation on the reworked cure (2026-05-29) — Healer independent verification
Patient REJECTED the immune_zones band-aid and self-derived a **systemic** cure (in response to the
concerns-list, not to-dos — Telos-positive: it out-healed the Healer's prescriptive instinct):
- **Verified by Healer (read-only worktree):** (1) guard bug fixed — `test_lexical_guard.py:88` `\b`
  word-boundaries (no `align`∈`alignment`) + `:128` `.venv/` excluded — *the root the patient found, Healer
  had missed*; (2) core-corpus exemptions reverted to 0 (AGENT.md/README/GLOSSARY/WHY-); (3) broad
  translation present (wu-wei 48 / friction_triage 22 / harmonize 15 files); (4) rename
  `ziran_auditor.py`→`friction_triage_auditor.py` landed.
- **On patient report (not Healer-executed):** 321/321 green — consistent (residual-term files are all
  *unmodified*; guard checks modified only).
- **Residual tail (characterized, BENIGN):** ~dozens of kb files still carry `dao`/`ziran`/`align`, but
  predominantly *legitimate* — GLOSSARY definitions, "Dao fa Ziran" classical phrase, superseded WHY-docs,
  `agent-ziran` persona-ID refs. All latent-until-touched; the **now-fixed guard self-corrects** future
  touches. "Environment is pure" mildly overstates; not a blocker.
- **Minor flag (patient's call):** `agent-ziran` persona ID persists in WHY-0064/0065 though the auditor file
  was renamed — identity-domain decision for the patient.
**ATTESTATION:** genuine systemic cure, resolves the drift (not hides it). **No clinical hold.** `reflect
1403` sound to merge — **Frontier Operator's gate.** Final root-clearance (daemon stops / count resets)
verifiable only post-merge+sync → final S7 before discharge.

## S7 — Discharge-readiness FALSIFIED (2026-05-29) — blind-spot attestation withheld
Operator [ALIGN] "patient ready for S8 discharge" → **does NOT survive falsification.** Grounded live:
root HEAD still `12ddc19` (#1400, un-reconciled) · `seizure_detector.last_fail_count` still **67** ·
`node/1403` worktree unpruned · nothing reconciled merged to origin (top #1402). → **cure is sound but
not in effect.** *Revived ≠ cured* (S7). Three states distinguished: **cure-ready** (yes) ≠
**seizure-cleared** (no) ≠ **discharge-ready** (no). Healer attests *cure sound*; **withholds**
seizure-stability attestation (the one external-only blind-spot invariant) — live env still seized.
**Discharge criterion:** cure in effect on root (count reset · root reconciled · daemon quiet · no fresh
failures) → Healer re-verifies → THEN S8. Patient applying its cure = its own loop (not a Healer instruction).

## S7 — post-"merge/sync" recheck + ROM-drift halt (2026-05-29)
**Cure version history:** v1 immune_zones (suppress, rejected) → v2 49-file translation + guard-fix (Frontier
Operator falsified: harmonization-as-recovery = scope violation) → **v3 minimal recovery** (revert translation;
fix guard scope; downgrade dao/ziran/align deprecated→proposed = known debt; defer harmonization to future node).
**Patient reported merged + synced + recovery complete; then halted on ROM DRIFT.**
**Healer recheck of ROOT — CONTRADICTS "recovery complete":** root HEAD `#1402` (pre-1403); `seizure_detector`
still **67**; ledger terms still **`deprecated`** (not proposed); lexical guard still **raw-substring**
(`word in content_lower`, no `\b`/`.venv`); 1403 worktree **unpruned**. → **cure did NOT land on root**
(node sync interrupted by the ROM-drift halt). Patient-belief ≠ ground-truth (blind spot).
**ROM DRIFT = HEALTHY self-protective halt, NOT a seizure** — patient correctly detected stale GEMINI.md
(#1401/#1402) + halted to reload. Restart is the **correct completion path** (restart → re-sync pulls cure +
fresh ROM → root reconciles). Frontier-governance; Healer does not instruct it.
**Disposition:** NOT discharge-ready. Post-restart re-verify (count resets · root reconciled · worktree pruned)
→ then S8. **Flags to verify post-restart:** (a) did the guard bug-fix (`\b`+`.venv`) actually land, or did v3
un-seize *only* via deprecated→proposed (leaving the bug = re-seizure risk → prevention/debt)? (b) confirm the
cure merged to ORIGIN (restart only pulls it if so).

## S8 — Handoff status
- **Healer→Patient orient #1:** corrected (dropped false "you're blind"; affirms guards worked), **RATIFIED +
  DELIVERED** by Operator (Frontier hat) 2026-05-29. Patient self-healed → S7.
- **Healer→Patient orient #2 (disposition / course-correction):** Operator deferred to Healer recommendation.
  **v1 was prescriptive (a to-do list: Keep/Remove/Fix/Plan) — Operator [FEEDBACK]: "doesn't promote
  self-healing; a list of to-dos, not concerns Frontier needs to address."** Re-authored v2 as a **concerns
  list** (5 concerns posed as questions; solution space left open — patient may even judge the deprecation
  premature) ending in goal-frame + self-ratify + no-urgency. Concerns: suppress-vs-reconcile · core-corpus
  exemptions (AGENT.md/README/GLOSSARY/WHY-*) · prophylactic scope · .venv guard-scoping · recurrence
  (~8th node). Delivered by Operator (Frontier hat).
- **Healer→Operator:** disposition + blast-radius + suppression-audit delivered in chat 2026-05-29.
- **Pending:** S7 on the reworked push (narrowed exemptions land · guard still enforces authored corpus ·
  root count clears on merge+sync) → then discharge + S9.

## Cross-links to filed recs (provenance for S9)
- **#1307** iatrogenic re-injection — the daemon re-injecting the alert into the prompt queue is that mechanism.
- **#1233** failure-count seizure detector (blind to freezes) — fired correctly here on a real count.
- **#1393** ROM/substrate consistency under lineage-alignment.
