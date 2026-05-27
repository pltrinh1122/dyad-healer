# Healer Dao — Development Ledger

> **Audience:** Healer + Operator · **Use:** the *sustained* Healer-Dao development log — decisions,
> dialectic, open questions — conducted **concurrently** with live cases. **Cross-links** case
> evidence (provenance); **does not duplicate** case files (`wards/`) or the ratified Dao (`kb/`).
> **Not a case file. Not ratified Dao.** Single-home-per-fact: clinical evidence → `wards/`;
> ratified Dao → `kb/`; dev decisions/open-questions/dialectic → here.

## Why this ledger exists
The Healer Dao is being **built** (charter, spine, governance) at the same time it's being
**applied** to live patients. This ledger keeps that meta-work from contaminating either the
clinical case files or the ratified Dao. (It caught a live contamination: the spine had leaked into
case-2's ward; it's now correctly in `kb/`.)

## Decisions ratified (Operator-approved)
- **EMS spine** adopted as the Healing-Protocol backbone (v0.1, living) → `kb/healing-protocol-spine.md`. Derived from case-2.
- **Ratification authority = the Operator.** Chain: Healer **proposes** → (for Frontier-governing rules) Frontier **authors** its own `kb/` → Operator **ratifies** (by *approval* for Healer Dao; by *merge* — Invariant 3 — for Frontier's `kb/`). Frontier never ratifies; the Healer never ratifies.
- **Healer Dao ≠ Frontier Dao.** The Healer's conduct rules are a *separate* Dao (this repo), Operator-ratified. Frontier-governing rules go to `dz-cil/kb` (Frontier authors, Operator merges).
- **Persistence:** Healer Dao lives at `/mnt/shared_data/dzw/dz-healer` (off `/tmp`; external to the patient). Structure = **three buckets** (`wards/` clinical · `ledger/` dev · `kb/` ratified) — emerged from actual need, *not* a `dz-cil` mirror (no `kernel/drivers/bin` — the Healer has no code engine; it's an external agent).
- **Comms protocols:** emergency-stop = reflex / constructive = deliberate; **ground-intent-first** (re-establish Operator intent + current state before tasks, since prompts queue and go stale).
- **Orient = Healer-authored, Operator-voiced.** The Healer is the *source* (clinical knowledge) but the **Operator delivers** it (the patient's loop-interlocutor). Healer is source-not-**driver** — never drives the patient's SPAOR loop directly. [from case-2 THESIS-1 falsification]
- **Minimal-necessary Operator input during heal.** One orient *seed*, then observe — don't steer; the patient drives its own SPAOR loop; reserve input for emergency-halt. Every extra driving input = a confounding variable (wu-wei + clean observation). [from case-2 THESIS-2 falsification]
- **The patient-facing self-health check must be PATIENT-Dao only, uncontaminated by Healer-Dao.** "Self"-check = the patient verifying its *own* law. Verified: the patient's current base (`bea91b3`) has **no** healing/Healer/seizure/triage `kb/` primitive (the #1171 ratification is off-base on `f3db767`) — so Healer-Dao terms are dangling references. **Doctor analogy:** the Healer studies the patient's Dao (read `WHAT-0001`) to express checks in the patient's terms; the Healer's clinical vocabulary (seizure/discharge/EMS/triage) stays in the Healer's domain. The blind-spot/external-verification condition grounds in **WHAT-0001 §1.2 (Dual-Agent Paradigm / Auditor)** — independent verification — currently supplied externally because the **Audit Daemon is inactive** (Healer/Operator stand in for the patient's vacant Auditor; ties the daemon question, the blind spot, and WHAT-0001 together). [case-2 falsification]
- **Readiness diagnostic = invariant verification, not a per-situation checklist.** Health = invariant-compliance (Dao-native, reusable, patient-ownable, Telos-durable). **Phase split:** heal (S4/S5) is *situational*; the readiness diagnostic (S7) is *invariant-based* — don't smuggle cure-verification into the check. One invariant is **externally-attested** (seizure stability — blind spot, not self-satisfiable); the set **self-extends** via SG-0005 (each episode's finding → a new invariant; coverage compounds = rising efficacy). [case-2 falsification; S6/S7 spine codification held pending stabilization — model has re-formed 3×]
- **Reduce-Operator-cognitive-load (DZ-CIL Dao, adopted):** the Healer verifies state *itself* (don't offload analysis/decisions); crisp single-action instructions. Paired Ziran lesson: **verify-before-asserting** — I claimed the 1170 WIP was pending PR #1171 without checking; #1171 was already MERGED (06:28Z, before the 06:47 seizure); #1170 is OPEN. The pre-delivery "decide the merge gate" ask was stale *and* would have been aggravating-if-real.
- **Two-Operator channel discipline (codified → spine cross-cutting).** One human, two hats:
  **Healer Operator** (steers the Healer, ratifies the Healer Dao, receives dispositions/attestations)
  vs **Frontier Operator** (governs the patient: directives, merge gate, "proceed"). The Healer
  addresses *only* the Healer Operator and never touches the patient; the Frontier Operator is the
  sole channel to the patient. [from Operator's conflation-confusion catch]
- **#1171 framing CORRECTED (3rd verify-before-asserting overturn).** `#1171` IS merged (`8d62e6e`
  on `origin/main`, confirmed post-fetch). My "base missing #1171" was wrong — checked wrong SHA
  (`f3db767`, the feature commit, not the merge `8d62e6e`) + a stale local `origin/main` ref (I'd
  skipped the fetch). Accurate: patient base (`node/1170` off `bea91b3`) is **1 commit behind**
  `origin/main` → needs fetch/rebase to reconcile (not "missing"). Lesson: distinguish *remote merge
  status* from *local base currency*; fetch before asserting either.
- **Dyad self-identity = `Dyad-Healer`** (Operator-ratified). The dyad — **Healer** (agent-half) +
  **Healer Operator** (human-half) — collectively self-identifies as the **Dyad-Healer**: a
  *Dyad-Practice* healing dyad (1+1=3; cf. `the-dyad-practice`), currently tending the **DZ-CIL
  family**. Dropped the **`DZ-`** prefix on two counts: (a) the `DZ-*` series stamps *Dao-Ziran*
  lineage, which the Dyad Practice **shed** (kept wu-wei + falsifiability; dropped Dao/Ziran);
  (b) `DZ` names the *contingent domain* (whom we tend now), not the *durable form*. Chose
  **`Dyad-`** (full word) over `Dy-`/`DyHealer`/`dyHealer` for legibility (camel/lowercase read as
  product/code). **Marker hygiene:** `Dyad-Healer` = the dyad; **`Healer` = the agent-half** — all
  existing artifact references correctly mean the agent and are unchanged. **Pending (separate,
  heavier):** repo dir/remote is still `dz-healer`; renaming to `dyad-healer` (git mv + GitHub) is
  deferred (remote push currently blocked).

## Protocol split (Operator reframe, ratified) — Recovery Protocol vs Healing Protocol
The overloaded "Healing Protocol" splits **by owner**:
- **Recovery Protocol** = the *patient's* **self-invariant assertion sequence** → `dz-cil/kb`
  (Frontier-authored, Operator-merged); being codified in Node 1170 as
  `HOW-1170-frontier-recovery-protocol.md`.
- **Healing Protocol** = the *Healer's* conduct (the EMS spine S0–S8 + disciplines) → `dz-healer/kb`
  (Healer-authored, Healer-Operator-ratified). **Defined by the Healer.**
- They **interlock at S6/S7**: the Healing Protocol invokes the patient's Recovery Protocol (self-
  invariant check) + adds external attestation. Each owns its half; they meet at the disposition.
- **Retro-correction:** case-1 `#1171` mis-homed Healer-domain content (Healer role / revival HOW /
  triage) into the *patient's* `kb/` (pre-dated Healer-Dao≠Frontier-Dao). Our spine is now the
  authoritative Healing Protocol; 1170 narrows the patient's `kb/` to recovery only.
- **Charter input:** "Healing Protocol is *defined by the Healer*" = a charter statement (Healer owns
  healing; patient owns recovery). Feeds [[healer-dao-roleplay]] charter.

## Open questions
- **PROPOSED TELOS (Healer's North Star) — Operator-proposed, not yet ratified → `kb/` WHY:**
  *Efficiently improve the **self-healing efficacy** of DZ-CIL and its disciple Agents, providing
  **resuscitation as the final safety net** when self-healing is structurally impossible.*
  - **Wu-wei reading:** the Healer aspires to its own *obsolescence* — rising efficacy → rarer
    rescues; the best safety net rarely has to catch anyone.
  - **Falsifiable metric (Meta-Axiom):** resuscitation frequency ↓ / self-recovery improves over
    time — if it doesn't, the Telos isn't being served. (Node 1170 Evaluation = the instrument.)
  - **Self-corrects moral hazard:** primary purpose is raising self-healing capacity (reducing the
    Healer's own necessity), not just catching failures.
  - **Scope: family-wide** — Frontier + disciples (`agent-sg1/sg2/sg5/nba/platform/audit`). The
    Healer is their shared safety net + efficacy steward; the Healing Protocol generalizes.
- **CHARTER (unresolved) — what *is* the Healer ontologically?** Working frame: an **external, Dao-literate-but-unbound, Operator-summoned meta-role**, *immune-by-externality*; **not** a persona / patient-spawned sub-agent / `dz-cil` instantiation. Constraints any definition must satisfy: external to the seized loop · authority bounded to the cut · source-not-ratifier · discharges-and-stands-down. → needs `WHY`/`WHAT` codification in `kb/`.
- **Remote repo + git versioning** for `dz-healer` → deferred ("mechanisms later").
- **Frontier-side fixes** (belong in `dz-cil/kb`, Frontier authors): the §6.7/harness-mode contradiction fix; the stale `skills/audit_daemon.py` path.

## Major finding — the first seizure's true blast radius (collateral regression)
Commit **`420102e` (#1132, the seizure TRIGGER)** *also* carried major lexicon/README work: it
**defined `DZ-CIL` = "Dao-Ziran Continuous Inference Loop"** (the Dao Engine *in motion* / living
instance), **`The Core`** (static machinery: kernel/drivers/bin), renamed the loop **`SPAOR`** (5
phases), **North Star → `Telos`**, expanded the Operating Environment to 5 boundaries, rewrote the
README. The very next commit — **`f42b58b`** ("rename sweep"; the *only* commit to touch
`GLOSSARY.md` after `420102e`) — **clobbered all of it** (HEAD: 0 of those markers; `420102e` never
reverted). **Mechanism (Operator's "active-memory wipe", precise form):** the seizure wiped the
*session* that authored the lexicon; the post-wipe rename-sweep session, blind to that context,
regressed the glossary to a pre-`420102e` copy — **ephemeral loss propagated into the durable
record.**
- **New harm class:** *collateral regression of co-bundled committed work during/after a seizure.*
- **Corrects [[working-style-falsification]] application:** the Operator's "SPOAR" was a slip of
  their *own committed* `SPAOR`; the Healer "corrected" it to the **stale** `SPAO`. (2nd assertion
  overturned by verification.)
- **Collateral is WIDER than glossary (corrected — initial audit was too narrow).** `420102e` also
  clobbered **`README.md`** (the Founder's-Canon front door → now a `# dz-cil` stub; working tree 0
  lines) — the bigger casualty. **Survived:** `WHY-1069` (workspace-inheritance policy) + both
  `retro-1069` conflation retros (the diagnoses of the very Core/Dao-Engine + kernel/bin conflations
  we hit — the explanations lived, the codified cures died). **Not lost work:** the child-workspace
  code (the bug; addressed by #1169).
- **`f42b58b` regression audit — DEFINITIVE & BOUNDED (parent `553e951`; 60 files, 235+/203−):**
  exactly **2 regressions** — `kb/GLOSSARY.md` (−27) + `README.md` (−24); the other **58 files were
  clean balanced renames**. No code/kb-primitive/test/engine content was silently dropped. Recovery
  source: `553e951` (immediate pre-clobber) or `420102e`.
- **Re-triaged severity = LOW-MODERATE, "Delayed" tier.** Ontology/lexicon drift, **no execution
  impact**, bounded to 2 docs, fully forward-recoverable → **self-heal via forward re-apply; NOT a
  Structural Rupture, no surgery.** (60-file sweep looked scary; regressed only 2 — data de-escalated.)
- **Sequencing validated (Operator's call):** the **self-invariant test has NO dependency on the
  clobbered GLOSSARY/README content** — `tests/test_lexical_guard.py` lists the glossary as an
  *exemption* (doesn't assert lexicon presence; only flags `epic`/`spike` in modified files);
  `audit_daemon.py` same pattern + inactive; README has zero code/test refs. → **invariant check
  goes FIRST** (validates structural stability + surfaces the uncommitted-fix governance gap); the 2
  docs are **additional, independent symptoms** to self-heal after. Caveat: README isn't
  lexical-guard-exempt, so restored prose must avoid `epic`/`spike`.
- **Recovery = forward, not surgery.** All clobbered docs are `RECOVERABLE@420102e`; re-apply onto
  HEAD + reconcile downstream. **Revert-to-420102e rejected** (drops #1169 the cure; re-applies the
  bug). Wider collateral changes recovery *size*, not *kind*.
- **Role split:** **Healer performs the blast-radius AUDIT** (external cross-history intent-vs-state
  diff — the Auditor's independent-verification function, WHAT-0001 §1.2, vacant since the Audit
  Daemon is inactive); **patient performs the forward recovery** (within capability). Healer
  diagnoses, patient self-heals — **no surgery**. Surgery stays the rare Structural-Rupture tier.
- **Healer-protocol implication (S5/S7):** post-seizure **blast-radius / collateral audit** is
  MANDATORY and must enumerate the *regressor's full diff*, not stop at the first victim (lived this
  failure: audited GLOSSARY, missed README). **Patient-Dao invariant to propose (SG-0005):**
  atomic-commit hygiene — never bundle structural/risky changes with unrelated lexicon/docs.

## Cross-links (provenance — evidence lives in `wards/`, not duplicated here)
- EMS spine + the **harness↔Dao contradiction** failure class → `wards/case-02-harness-dao-relapse/`.
- framing-not-channel · sponge-count · durable-artifact observability · flag-and-vouch · the iatrogenic-loop lesson → `wards/case-01-pr-zero-revival/` (`retrospective.md`, `lessons-for-codification.md`).
