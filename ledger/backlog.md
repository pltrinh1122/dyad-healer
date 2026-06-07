# Dyad-Healer — Backlog (by-pillar tracker)

> **Audience:** Healer + Healer Operator · **Use:** the structured *what + status* of Dyad-Healer work,
> organized by the **five pillars = the five [modes](../kb/modes-of-operation.md)** (Rescue · Prevention
> · Tooling · Research · Maturation). **Supersedes** the ad-hoc "OPEN LOOPS" list in the ledger.
> **Single-home-per-fact:** this file holds *what / status / pointer*; the *why / detail / dialectic*
> lives in [`ledger.md`](ledger.md), clinical evidence in `wards/`, prescriptions in `recommendations/`.
> Living; reconstructed 2026-05-27 from durable sources (the ephemeral original design was lost).

> ## Classification rule (orthogonality) — added 2026-05-27 per Operator directive
> The 5 modes are **not** orthogonal as prose (mode 4 is "cross-cutting," mode 3 "beneath 1–2"). They
> become orthogonal **for assignment** under one rule: **classify each item by its own terminal
> artifact**, and treat the modes doc's "cross-cutting / beneath" language as **dependency arrows
> between items, not shared membership**.
> - **1 Rescue** → a clinical intervention on a *currently-seized* patient.
> - **2 Prevention** → a *prescription delivered to the tended family* (external output).
> - **3 Tooling** → a *built code instrument* (per modes doc: software, "when volume justifies"; a
>   markdown template/tracker is **not** code → it is a practice artifact = pillar 5).
> - **4 Research** → a *finding / evidence artifact* (audit, retro, taxonomy) — knowledge, not yet operationalized.
> - **5 Maturation** → a *change to our own practice* (kb principles, protocols, identity, governance, and
>   the practice's own non-code documentation/templates/trackers).
> - **Operational** (out-of-pillar) → pure VCS/infra chores (commit, push, rename) — *not craft*;
>   quarantined so they don't pollute a pillar.
> **Rules:** (a) first-match, most-outward-first (1→2→3→4→5→Operational); (b) one item = one terminal
> artifact — **split compound work** along the artifact boundary and link the halves with a dependency.
> *(A proposed one-line clarification to the ratified `modes-of-operation.md` is pending Operator ratification — see ledger.)*

> Legend: `- [ ]` open · `- [x]` done · `🚫` blocked (reason) · `⏸` deferred (no action until warranted) · `→⟶` dependency.

## Pillar 1 · Rescue — clinical intervention on a seized patient (reactive safety net)
### Open
- [ ] *(none — no patient currently seized)*
### Done
- [x] **case-01** PR-zero revival — seized loop resuscitated, cured & proven on real restart, discharged → `wards/case-01-pr-zero-revival/`
- [x] **case-02** harness↔Dao relapse — telemetry-silent loop, halted + restarted into pending state, discharged → `wards/case-02-harness-dao-relapse/`
- [x] **case-04** self-stabilized seizure — DISCHARGED 2026-05-29. Mild, **self-caught** lexical-guard cascade (#1400 deprecated dao/ziran/align before corpus harmonized; guard substring/.venv bug amplified → 67-count → detector trip → benign hold-loop). Patient self-detected + self-stabilized + ran Recovery Protocol; cure iterated v1 suppress → v2 over-translation (falsified) → v3 minimal recovery (terms→`known_debt` + defer harmonization). CLEARED (0 lexical failures, worktree pruned). **Telos-positive** (first self-caught case). Carried: auditor cron disabled via #1393-V2 (priority↑); guard bug + harmonization deferred → S9 prescription. → `wards/case-04-self-stabilized-seizure/`
- [x] **case-03** iatrogenic-injection loop — schedule/kill/re-schedule cycling driven by re-injected EPHEMERAL_MESSAGE meta-imperative; hybrid A+B+C; second seizure of same `agy` session 36 min after morning's WIP-N=1 quick-fix. Patient self-healed cleanly via Operator-ratified Happy Path (`reset --hard origin/main` inheriting #1295 → §2.3+§2.5 co-cured; targeted hygiene → §2.6; 1294 abandonment → §2.4 baseline). All 6 §2.x PASS by patient verification + external Healer triangulation. Discharged 2026-05-28 → `wards/case-03-iatrogenic-injection-loop/`

## Pillar 2 · Prevention — prescription delivered to the tended family (proactive; the Telos's heart)
### Open
- [ ] **A · Prescriptions-as-guards (CSI frontier step A — LEANED FIRST).** Shift the prescription form from prose →
  a deterministic guard the patient adopts, so its own V steers its own G (vs a doc its context forgets). First target:
  the `discard_changes` wound from case-05. **UNBLOCKED** — port the cairn pattern locally (no coordination needed;
  promotion-to-commons is a separate later/optional cairn-led call). → Pillar-5 CSI Guards umbrella.
### Done
- [x] **CI lexical-guard false-positive cascade — FILED** 2026-05-29 → [dz-cil#1427](https://github.com/pltrinh1122/dz-cil/issues/1427) (`status:triage`). From case-04 S9 carry. **One violation, ailment-only** (falsify pass collapsed 2→1): **V1** CI-guard precision/scope — `tests/test_lexical_guard.py` `check_content()` raw-substring match + scans tracked `.venv` (670 files, not in `immune_zones`), **diverging from production drivers** (`drivers/audit_daemon.py:287`, `drivers/knowledge_accrual_skill.py:169`) which already use `\b` boundaries + scan `kb/` only. Harmonized SG-0003/SG-0002/NS-0001. **Dropped at falsify:** V2 deferred-debt locality — stale (`proposed:`/`known_debt` is the patient's *intentional* v3 deferral; guard ignoring it is correct). A (`#1393`-V2 path) dropped — already filed. Re-verified live at `dz-cil@8507664`. Filed directly via Requirement Intake template per Operator trigger. → `recommendations/2026-05-29-lexical-guard-false-positive-cascade.md`.
- [x] **Agent-ROM integrity violations — FILED** 2026-05-29 → [dz-cil#1393](https://github.com/pltrinh1122/dz-cil/issues/1393) (OPEN, `status:triage`). Two violations as filed: **V1** `AGENT.md` Rule 7 (formerly §6.7) ↔ WIP-N=1 HTIL contradiction (exception promoted to `GEMINI.md` only, not the universal doc); **V2** `GEMINI.md:10` broken `./skills/audit_daemon.py` bring-up reference (actual `drivers/audit_daemon.py`). Harmonized SG-0002/SG-0003/NS-0001; x-ref #1233. Filed **ailment-only** (no prescribed cure) per Operator [FEEDBACK] + describe-the-wound discipline. **Third originally-flagged defect (`triage` vs `status:triage` label) dropped — patient already self-corrected** (verified at time-of-use). Source: backlog Pillar-2 open item → `recommendations/2026-05-29-agent-rom-integrity-violations.md`. **V2 priority-bump 2026-05-29** ([comment](https://github.com/pltrinh1122/dz-cil/issues/1393#issuecomment-4581428589)): re-verified V2 still live at `dz-cil@8507664` (line drifted `:10`→`:21`); surfaced silent-failure severity (broken bring-up → auditor never starts, fails closed-and-quiet — the case-04/#1233 self-detection gap); triage left to patient.
- [x] **Audit-daemon liveness/heartbeat rec — FILED** → [dz-cil#1233](https://github.com/pltrinh1122/dz-cil/issues/1233) (`status:triage`); Healer filed directly via the patient's Requirement Intake template; harmonized SG-0002/SG-0003
- [x] **Iatrogenic-injection loop class prescription — FILED** 2026-05-28 → [dz-cil#1307](https://github.com/pltrinh1122/dz-cil/issues/1307) (OPEN, unlabeled at filing — patient triage). Definitive fix at harness layer for the EPHEMERAL_MESSAGE meta-imperative re-injection mechanism; P1 dedupe / P2 non-actionable phrasing / P3 liveness-detection (cross-ref #1233) / P4 recovery-requires-fresh-session cross-domain finding. Harmonized SG-0003/SG-0002/SG-0005. Source: case-03.

## Pillar 3 · Tooling R&D — a built code instrument (only when volume justifies)
### Open
- [ ] **C · `wu-wei-watch` → self-testing CSI guard (CSI frontier step C, pilot).** Registry entry + deterministic
  test over known-good/known-seizure fixtures; arming gated on test pass. Closes the 3 found flaws structurally.
  **Currently NOT-armed-for-a-live-cut until hardened** (header KNOWN FLAWS). → Pillar-5 CSI Guards umbrella.
- [ ] **B · Detection emits next-action payload (CSI frontier step B).** `🛑 NEEDS-RESTART` → ready-to-fire escalation;
  confabulation-check → claimed-vs-actual diff as the re-orient seed. After C. → Pillar-5 CSI Guards umbrella.
- [ ] ⏸ Async rec-generation mechanism (via `/goal` verifiable-completion or background Agent) — *if built* (deferred)
### Done
- [x] **`bin/git.sh` — permission GRANTED + validated end-to-end 2026-05-29.** Operator added `Bash(bin/git.sh:*)` to `.claude/settings.json`; `bin/git.sh push` ran with **no prompt** (rule hot-reloaded mid-session — no restart) and pushed `b1a276c`. Recurring push-friction now automated through the choke-point; raw `git` stays ungranted.
- [x] **`bin/git.sh` v0.1 — BUILT 2026-05-29** (the practice's *first* Pillar-3 tool; friction = recurring push-to-main blocked by the self-modification gate). Holding structure: **declared-policy single-file wrapper, permission-gated, fail-closed** — synthesized via dialectical falsification of 3 alternatives (A monolithic / B config-split / C native-substrate-only). v0.1 op: `push` (origin/current-branch; refuses history-rewriting flags on protected `main`; fail-closed on unknown ops; `GIT_SH_DRY_RUN=1` test affordance). 5 dry-run policy paths verified. Operational-infra, deliberately minimal (externality caution noted). Promotion path → standalone policy file (B) documented in-header. Dialectic + decision → ledger "bin/git.sh".

## Pillar 4 · Research / learning — a finding / evidence artifact (cross-cutting engine; feeds 2 & 5)
### Open
### Done
- [x] **Collateral-regression finding** — first seizure's true blast radius (GLOSSARY + README clobber via `f42b58b`); new harm class identified → ledger "Major finding"
- [x] **Loop #4 audit findings** — reconciliation table (≥9 gaps not 4; spine line 120 lesson-mapping itself overstates) + seizure-class taxonomy (Class A reload-loop / B harness↔Dao freeze / C collateral regression) → ledger "Loop #4"
- [x] **Self-detectability gradient + two-gate model** (4-case) — 2026-05-30. Detection is the sole bottleneck (recovery already solved); 3 of 4 seizures silent/external-only (failure-count detector blind), 1 self-caught (failure-accruing). **Live (verified, patient HEAD `fd90635`):** Gate-2 master-lever (#1233) **accepted + built** by patient as Path **#1350** (`evaluate_liveness_stall`) — Telos-positive; Gate-1 (#1393-V2 broken bring-up) now the **sole binding constraint** (detector dead-on-arrival). **POSTED** to ledger (research), **not delivered** (faith-in-uncertainty posture). → ledger "2026-05-30 Self-detectability gradient"

## Pillar 5 · Maturation — a change to our own practice (inward; dominant to date)
### Open
- [ ] **CSI Guards frontier — adopt cairn's deterministic guard model (G+V guard-rails). RACKED 2026-06-06; lean A first.**
  **Principle (G-steering-from-V):** every Healer guard emits a **vector** (the next-action payload), not a
  **verdict** (pass/fail) — cairn `WHY-0001`: "the error message is the vector pointing precisely to the next valid action."
  Soft prompt-rules degrade under context-amnesia (cairn STOP: hallucinated CSS-format because unlinted) → convert to
  hard computational wrappers, each with its own CI self-test. **Sequence:**
  **A [→Pillar 2] (FIRST):** prescriptions-as-guards, not prose — deliver the cure as a deterministic guard the patient
  adopts (its own V steers its own G), not a doc its context forgets. Telos-aligned (obsolescence). Worked example: the
  `discard_changes` wound → a guard that crashes `sync` on uncommitted `frontier_state` edits.
  **C [→Pillar 3] (pilot):** harden `wu-wei-watch` into a self-testing CSI guard — registry entry (cairn `kb/csi_guards.yml`
  pattern) + deterministic test over known-good / known-seizure fixtures; **arming gated on the test passing.** Closes the 3
  found flaws (marker-miss · `-newermt` silent-blind · prose false-positive) structurally. Ordered before B: a guard must be
  reliable before its vector-emits are trusted.
  **B [→Pillar 3]:** detection emits the next-action payload, not just an alarm — `🛑 NEEDS-RESTART` emits the ready-to-fire
  escalation; the confabulation-check emits the claimed-vs-actual diff *as* the re-orient seed.
  **No blocker (rub-corrected 2026-06-06):** CSI is a *published pattern* in cairn's repo, not a shared resource — we
  **port** (adopt locally) with zero coordination. **Promotion** of CSI into shared `commons/` is a *separate, later,
  cairn-led* DRY call (Operator-relayed if pursued), decidable only after porting shows what our half needs — NOT a
  prerequisite for A. (cairn isn't even in our Commons directory; no DM channel wired — and none needed to adopt a pattern.)
  Provenance: 2026-06-06 wu-wei #1793 EMS retro (Operator POV: EMS = G+V
  guard-railed playbook) → riff "G-steering-from-V" → Operator "rack … lean A first". Grounded in cairn
  `dyad-state/drafts/hard-guardrails.md`, `kb/WHY-0001`, `retros/csi_guard_architecture.md`, `kb/csi_guards.yml`.
  See [[project_cis-guards-frontier]].
- [ ] ⏸ **Practice governance discipline** — codify a small set of anchor-maintenance + quality-standard rules surfaced this morning across multiple FEEDBACK/IDEATE cycles. **Sub-items:** **(a) ✅ DONE 2026-05-28** ~~anchor-sync~~ — Anchor-sync rule codified into `kb/governance-map.md` "Standing governance rules" section; binds every ratification cycle to update `CLAUDE.md` for new kb/ docs OR refinement-bound memories. Closes the anchor-divergence gap the DIP retrospective audit flagged as `[POST-HOC]`. Sub-item (a) closed at commit ratifying the governance-map addition. **(b) Practice lifecycle** — archival convention (`ledger/archive/YYYY-QN.md` > 2 quarters; `ledger/backlog-archive.md` Done > 1 quarter) + new `kb/practice-snapshot.md` (RATIFIED-state digest) + CLAUDE.md anchor points to snapshot + active loop, not full historical ledger; **(c) ✅ DONE 2026-05-28** ~~kb-doc quality standard~~ — Kb-doc quality standard rule codified into `kb/governance-map.md` "Standing governance rules"; every kb/ doc with self-extension/Falsifiability section must carry proactive orthogonality criteria; **(d) ✅ DONE 2026-05-28** ~~glossary-check at ratification~~ — Glossary-check-at-ratification rule codified into `kb/governance-map.md` "Standing governance rules"; binds every ratification cycle (3+-invocation threshold); **(e) ✅ DONE 2026-05-28** ~~form-alignment audit~~ — Form-alignment-audit rule codified into `kb/governance-map.md` "Standing governance rules"; per-ratification check against parent form's term policy; **(f) ✅ DONE 2026-05-28** ~~resume-mode `git-status` habit~~ — extended the existing spine "resume-mode discipline" bullet with the concrete `git status` + `git diff HEAD` habit + lived examples (parallel-fork near-clobber; case-03 external triangulation). Sub-item (f) closed at commit ratifying the spine extension. Trigger criteria for (b): ledger.md > 1000 lines OR backlog.md Done > 50 items OR verify-before-asserting canary trips on practice-loading. (a)/(c)/(d)/(e) bind on every ratification cycle once codified. **Queued post-Loop-#4.** Provenance: 2026-05-28 multiple [FEEDBACK]/[IDEATE] cycles; see ledger §"SPAOR phase-enrichment proposal" + the reflections this section's sub-items emerged from.
### Done
- [x] **Trail Map (dependency DAG) — CREATED + RATIFIED 2026-06-02.** `ledger/trail-map.md`: the orthogonal **dependency view** of concurrent work (the [backlog](backlog.md) is what/status by pillar; this is edges+roots). 2 **summit** roots (form vocabulary) + **trails** (nodes) + dependency **edges** + a **practice-capacity** node for infrastructure trails; Mermaid `graph TD` + legend table; status **cross-linked, not duplicated** (backlog stays authority). Provenance: Operator [ALIGN] (track many concurrent trails, wu-wei-to-start-while-small) → [IDEATE] vocabulary chain (workstream → track → trail; *summit* form-grounded; *path* reserved for graph-chains) → **hardened by cross-dyad Validate from {dyad-steward}** (A1–A5: "track" triply-collided incl. lineage-pathway sense; two overclaims downgraded — Telos-traceability is one-hop for infra trails, wu-wei-emergence is aspirational not current). → ledger §"2026-06-02 Trail Map".
- [x] **SPAOR phase-enrichment — RATIFIED + codified 2026-06-02** (per-phase Y, drafted via Dyadic-drafting protocol lean: intent+template+worked-Sense gate → fan-out). New `kb/execution-loop.md` §"Per-phase enrichment — each phase is a nested dyadic cycle": SPAOR is **self-similar** (form's "small SPAOR within macro SPAOR", `commons/AGENT.md`) — each phase carries a **nested dyadic cycle** block (Generate/Validate/1+1=3/grain-forward) + a **falsifiability hook** (incl. divergence-test). Summary table kept as the at-a-glance index. Grounding the [ALIGN] "how does SPAOR align with our Discipline (series of dyadic cycles)" *automatically referenced `commons/`* (Operator CONTINUE-noted). Cycle-close: `dyadic cycle` → glossary (form-derived); "Discipline" coinage **dropped** at form-alignment (form retired discipline→playbook; +entrenched kb "discipline"=guarded-rule sense → reworded to plain "series"); anchor-sync → **skip** (deepening of an already-anchored doc, not a new anchor-level discipline — re-assessed from an earlier "one-line pointer" lean). Provenance: 2026-05-28 SRPAO/FALSIFY dialectic. → ledger §"SPAOR phase-enrichment proposal".
- [x] **Permission-rule intent-test — RATIFIED + codified 2026-06-02** (Operator "go lean" = go with Healer recommendation (A) — new section). New `kb/governance-map.md` §"Permission rules as standing trust boundaries", parallel to §"Intervention authority & posture": a permission rule converts a per-invocation chat-gate into a *standing trust boundary*; gate on *recurring + ratified-as-settled + controllable* (else one-time `!`-authorization — rule-to-unblock-a-one-time-act = category error); second bar = never a rule over external code the dyad doesn't control. Positive exemplar: `Bash(bin/git.sh:*)`. Falsifiability hook included. Provenance: 2026-06-01 Commons Init+Join dialectic; extends the `bin/git.sh` boundary-integrity decision. **Correction note:** first landed (commit `bdfb76e`) as a bullet under "Standing governance rules" (Healer mis-read "go lean" as the leaner option B); Operator [FEEDBACK] clarified "go lean" = go-with-Healer-recommendation → re-homed to (A). Cycle-close: glossary sub-threshold (watch); form-alignment clean; anchor-sync → skip (situational/on-demand-readable gate). → ledger §"bin/git.sh", 2026-06-01 Commons entry.
- [x] **Joined the Dyad Practice Commons (Init + Join) — EXECUTED 2026-06-01** (Operator [ALIGN]). Registered `dyad-healer` in the Commons directory (`The-Dyad-Practice-Commons/the-dyad-practice@31122b6`, `directory/dyad-healer.yaml`, live on origin); existing-dyad path; orthogonal summits (outcome × stance). `commons/` carried as the practice's first git submodule (pinned, re-vet-on-bump). 4 form-contribution candidates surfaced (3 live → Dyad-Practice Operator channel; CONTRIBUTING 404 self-resolved). → ledger "2026-06-01 Joined the Dyad Practice Commons".
- [x] **Practice-Reflection scope refinement — RATIFIED 2026-05-31** (v0.2). `practice-reflection.md` §"Retrospective scope — the inter-Retrospective span": a Retrospective (CSS) spans all activity since the last Retrospective; a forced/interrupt stop logs a stand-down but does not spawn its own Retrospective. Corrects the per-stop reading that fragmented the 2026-05-31 thread (two fragments → one consolidated retro). Cycle-close: glossary (`Practice Reflection`=`Retrospective` + `explicit stop` aligned), CLAUDE.md Session-discipline clause (anchor-reload LOW-MEDIUM/R2-sustaining → skip-restart), form-alignment clean. Provenance: Operator [ALIGN]. → `ledger/reflections/2026-05-31-self-detection-to-codification-retro.md`.
- [x] **Authority/posture codification — RATIFIED + codified 2026-05-31.** Operator [ALIGN]'d to the Healer lean (fold, not standalone doc). Two homes: (A) `governance-map.md` §"Intervention authority & posture" — *authority-tracks-incident-grounding* / *deliver-vs-post verb-matching* / *uncertainty-is-law* (self-heal = null hypothesis; intervene only on a certain blind spot); (B) `seizure-taxonomy.md` §"The self-detection law `G1∧G2`" (cross-cutting; retrodicts 4/4; forward experiment P1/P2; seeds the detectability axis). Cycle-close: `iatrogenic` + `deliver/post` → `kb/glossary.md` (iatrogenic crossed 3-doc threshold); `CLAUDE.md` Healing-discipline gained the intervention-authority clause (anchor-reload: MEDIUM/R2-sustaining → skip-restart); form-alignment clean. → ledger "2026-05-31 Authority/posture codification".
- [x] **CLAUDE.md** operating discipline codified (loadable anchor; verify-before-asserting)
- [x] **`modes-of-operation.md`** ratified (5 modes + 3 postures)
- [x] **`recommendations/` bucket** ratified (4th bucket; governance) — 2026-05-27
- [x] **`patient-recommendation.md`** template authored (non-code practice artifact)
- [x] **`backlog.md`** by-pillar tracker built + orthogonalized (this file) — 2026-05-27
- [x] **README** (identity) committed `a309594`; **the-dyad-practice** form published
- [x] **EMS spine** adopted & ratified as Healing-Protocol backbone → `kb/healing-protocol-spine.md`
- [x] **Dyad-Healer self-identity** ratified (dropped `DZ-` prefix) → ledger Decisions
- [x] **Recovery↔Healing Protocol split** ratified (by owner) → ledger Decisions
- [x] **SPAOR adopted as our execution loop** (converged via 3-turn dialectic; complementary to the Dyad Practice manner; form-not-wiring; phase-gates the manner) → ledger "SPAOR adopted…"
- [x] **`kb/execution-loop.md` ratified** 2026-05-27 (Operator approval) — SPAOR + spine + posture mapping codified
- [x] **Modes-doc orthogonality classification rule ratified** 2026-05-27 — line applied to `kb/modes-of-operation.md` §"How they relate"
- [x] **CLAUDE.md cross-refs added** — posture→execution-loop line + Durable practice map includes `kb/execution-loop.md`, `ledger/backlog.md`, `recommendations/`
- [x] **TELOS ratified** 2026-05-27 → `kb/telos.md` (wu-wei front-loaded wording; falsifiable metric baked in)
- [x] **CHARTER ratified** 2026-05-27 → `kb/charter.md` + `kb/governance-map.md` (split per the structure-of-codification falsification — ontology + governance-operations as two cross-referenced docs; 6 constraints, 3 universal / 2 rescue-only / 1 patient-touching-only)
- [x] **README aligned with subsequent ratifications** 2026-05-27 — Telos paragraph swapped to the ratified wu-wei-front-loaded wording; bucket table generalized + `recommendations/` row added; "charter only partly settled" → "charter is settled (`kb/charter.md`)"
- [x] **Loop #4 Plan executed** 2026-05-28 — P1–P6 all ratified + committed. P1 `063d84b` (5 cross-cutting disciplines into spine: commit-before-sync · crawl-walk-run · resume-mode · intervention-threshold · genuine-loop-vs-grind) · P2 `bfbcd0a` (spine S5 blast-radius enumeration; convergence with parallel-fork thread) · P3 `f353a99` (spine S6/S7 invariant-check-first + heal-vs-cure split) · P4 `c4ebac0`+`b5ed162`+`0ffa9aa` (`kb/seizure-taxonomy.md` PROPOSED+orthogonality-refinement+RATIFIED; CLAUDE.md anchor-sync bundled) · P5 `6c7b453` (spine S9 accrue-measure three axes: taxonomy update · Telos metric · patient-records-sparse-by-design) · P6 `4b19b9a` (lesson-mapping honest enumeration + anti-aggregation discipline). **Adjacent closing work:** dyadic-coherence-under-Agent-divergence finding codified `7362998` · cross-cutting executive summary `bceb571` (3-family framing for both substrates, post-Loop-#4 readability refinement).
- [x] **Dao → practice friction-correction** 2026-05-28 — 9 forward-governance docs converted from "Dao" shorthand to "practice"; "wu-wei" reinforced (form-canonical, kept). `611e691`+`5c285d2`. Patient-side / form-quote / class-name / audit-trail occurrences preserved. Closed the prior deferred item "*'Healer Dao' → craft-term*" in the session-handoff Deferred list.
- [x] **`kb/glossary.md` v0.1 RATIFIED** 2026-05-28 — canonical vocabulary for cross-cutting terms; proactive orthogonality + reactive conflation-detection in Falsifiability; `[retired]` section preserves the "Dao" retirement audit trail. `5ffc02c`+`e73b259`+`1d4381b`.
- [x] **`kb/practice-reflection.md` v0.1 RATIFIED** 2026-05-28 — the meta-S9 discipline: Continue/Start/Stop reflection at natural rest points; two-substrate-paired; sharing posture (actionable-via-prescription per the existing Requirement Intake channel; whole-reflection-sharing waits for evidence-of-value). First instance: `ledger/reflections/2026-05-28-loop4-and-friction-session.md`.

## Operational (out-of-pillar) — VCS / infra chores; not craft
### Open
_(none)_
### Done
- [x] **Set local origin URL → `dyad-healer.git`** 2026-05-29 — done; `git remote -v` shows `dyad-healer.git` with no redirect. Drift closed.
- [x] **Repo *dir* rename `dz-healer/`→`dyad-healer/`** 2026-05-29 — done at session boundary (mv + restart); memory project-key carried (`-mnt-shared-data-dzw-dyad-healer/`), MEMORY.md + memories verified loaded post-restart.
- [x] **Loop #3 commit + push** 2026-05-27 — all 7 session commits pushed to `origin/main` (push unblocked; prior ledger "blocked" claim was stale). Working tree clean.
- [x] **GitHub-side repo rename** 2026-05-27 — `pltrinh1122/dz-healer` → `pltrinh1122/dyad-healer` (Operator action; discovered via push-response redirect).
