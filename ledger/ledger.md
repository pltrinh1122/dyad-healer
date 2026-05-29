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
- **Persistence:** Healer Dao lives at `/mnt/shared_data/dzw/dyad-healer` (off `/tmp`; external to the patient). Structure = **four buckets** (`wards/` clinical evidence · `ledger/` dev · `kb/` ratified Dao · `recommendations/` Healer outputs/prescriptions [ratified 2026-05-27]) — each emerged from actual need, *not* a `dz-cil` mirror (no `kernel/drivers/bin` — the Healer has no code engine; it's an external agent). Single-home-per-fact across the four.
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

## Orthogonality of the 5 pillars (Operator directive 2026-05-27) — falsified, then reconciled
The directive "ensure orthogonality" first **failed falsification**: the modes are non-orthogonal *as
written* — mode 4 is defined "**cross-cutting**… feeds *every* mode," mode 3 "**beneath** 1–2." Root
cause: the modes conflate *what work produces* with *how work flows*. **Reconciliation (applied to
`backlog.md`):** classify each item by its **terminal artifact**; treat "cross-cutting/beneath" as
**dependency arrows, not shared membership** → the bins are orthogonal for assignment while the doc's
flow-language stays true. Surfaced 3 real violations (a compound item split 4↔5; non-craft VCS chores
quarantined to a new **Operational** out-of-pillar section; pillar 3 = code-only, so templates/trackers
are pillar-5 artifacts). **RATIFIED 2026-05-27 (Operator approval):** the classification line is now applied to
`kb/modes-of-operation.md` §"How they relate" — *"an item belongs to the mode of its terminal artifact;
'cross-cutting'(4) / 'beneath'(3) are dependency arrows between items, not shared membership — so the
modes are orthogonal for assignment."*

## SPAOR adopted as our execution loop (2026-05-27) — converged via 3-turn dialectic
**Token (verified live, `dz-cil/kb/GLOSSARY.md:99`):** the loop is **SPAOR** = *Sense · Plan · Act ·
Observe · Reflect* (not "SPOAR"; the ledger's standing trap — guard the order).

**Decision:** Adopt **SPAOR as the Dyad-Healer's general execution loop** — taking the **form, not the
patient's wiring** (no Nodes/Meta-Graph/Sluice-Gate dependency; preserves our externality).
- **Relation to the Dyad Practice = complementary, orthogonal axes** (NOT "aligned"/competing): the
  Dyad Practice is an *epistemic/manner* form (Generate/Validate, 1+1=3) and is **silent on execution
  topology** (verified: 0 serial/parallel/sequence/schedule terms across all 83 lines of its README;
  even generate→validate is a logical dependency, not a schedule). SPAOR populates the *execution*
  dimension the form intentionally leaves open.
- **One grounding loop, phase-gated (the "how", tested):** SPAOR's Sense/Observe/Reflect are NOT a
  second grounding loop — they are *where* our existing Dyad manner (stock→grain→fit→test) runs.
  Mapping: **Sense** = read-the-stock / ground (the NON-NEGOTIABLE, now gated at entry) · **Plan** =
  minimum-force move (work-with-grain) · **Act** = execute · **Observe** = test against reality (the
  fit gets tested) · **Reflect** = falsify + codify (write the fix down). The manner is the *how*; the
  phases are the *gate*.
- **Why adopt (the surviving +1):** SPAOR gives our manner the **phase-gating it lacks** — our
  discipline is a "manner/spirit," un-gated, and "fails first under long context"; explicit phases
  gate the epistemic beats so they can't be skipped under pressure (cf. DZ-CIL's own SPAO→SPAOR
  correction restoring Reflect).
- **Posture integration:** SPAOR = the **Building / Authoring** execution loop; the **EMS spine
  (S0–S9) remains the Exception/rescue loop** (urgency-shaped, its own cadence). They don't collide.

**Dialectic trail (the practice working on itself; 1+1=3):**
1. THESIS (Operator): "SPAOR most aligned w/ Dyad Practice + our practice; adopt."
2. Healer falsified w/ 5 breaks (category mismatch; no Generate/dialectic; we have a closer loop;
   topology; externality).
3. REBUTTAL (Operator): "Dyad Practice intent ≠ codify serial/parallel execution." → **survived**
   falsification (grounded). Exposed Healer's **category error**: imported an execution-topology axis
   and treated the form's *silence* on it as *conflict*. Breaks 4 + execution-parts of 1–2 **withdrawn**.
4. Reframe: relation = complementary/orthogonal, not aligned → adoption *strengthened*. Healer could
   no longer falsify *whether*, only *how*.
5. "How" tested: option B (keep 5 phases, map epistemic beats onto the manner) beat option A (collapse
   to Plan/Act) — A re-creates the un-gated-discipline failure. → the fit above.

**Follow-up (pillar 5):** codify into `kb/` — either a new doc or an addition to the ratified
`modes-of-operation.md` mapping the 3 postures → their execution loops (SPAOR vs spine). Propose;
Operator ratifies the kb form.

## Charter ratified (2026-05-27) — converged via three falsification passes
**Decision:** the Dyad-Healer Charter is now codified across **two cross-referenced kb docs** (not one
— per the structure-of-codification falsification):
- `kb/charter.md` — *ontology*: the Dyad-Healer definition + 6 constraints + falsifiability. The slow
  doc; identity changes rarely.
- `kb/governance-map.md` — *operations*: dual-chain + posture-gated model; per-pillar table;
  constraint × pillar coverage. The fast doc; evolves with new channels (cf. the Requirement Intake
  discovery this session).

**Ratified Charter wording:** *"The Dyad-Healer is a Dyad-Practice dyad currently tending the DZ-CIL
family — the dyad is the irreducible unit (1+1=3); the patient is not part of the dyad — it is the one
under care. Its agent-half, the Healer, is an Agent filling the role of healer to seized agents in the
tended family — external to the patient's loop, literate in the patient's law but not bound by it,
immune-by-externality, enabling rather than fixing (describe the wound, not the suture). Its
human-half, the Healer Operator, summons the Healer, steers it, and voices it to the patient;
ratifies the Dyad-Healer's Dao. The Healer is not a persona, not a patient-spawned sub-agent, not an
instantiation of any tended family's code-engine."*

**Six constraints (formerly four):** (#1 external · #2 patient-untouching · #3 bounded-to-the-cut ·
#4 source-not-ratifier · #5 discharges-and-stands-down · #6 enables-not-fixes). Coverage: 3 universal
(#1, #4, #6), 2 rescue-only (#3, #5), 1 patient-touching-only (#2).

**Dialectic trail (three falsification passes; 1+1=3 working on itself):**
1. **Working-frame falsification** (5 breaks): "unbound" misleading → "literate in the patient's law
   but not bound by it"; "meta-role" jargon → "Agent's role in a healing dyad"; "summoned"
   rescue-specific → "Operator-engaged"/full role; the dyad-not-half (the dyad is the irreducible
   unit); **added missing constraint #2** (patient-untouching).
2. **README-consistency thesis falsified** (4 further breaks vs. our own root `README.md`): "Dao"
   imported into our voice though the form set it down → reworded; missing *enable-not-fix* / "describe
   the wound, not the suture" → **added constraint #6**; the Healer Operator role trio
   *summons/steers/voices* wrongly compressed → restored (and the *voicing* role was the previously
   ratified Orient = Healer-authored, Operator-voiced decision — dropping it would have silently
   un-ratified it); missing explicit "patient is not part of the dyad" → added.
3. **Structure-of-codification thesis falsified** ("(A) one-doc is more wu-wei"): forcing ontology +
   governance-operations into one doc is the move wu-wei explicitly forbids (README line 83);
   single-concern-per-doc is the existing kb grain; LLM context-management favors selective recall →
   Option **(B) ratified**: two docs, strong cross-refs.

**README staleness surfaced by the consistency pass (separate follow-up — not Charter inconsistency):**
- `README.md` line 28: Telos wording is stale (pre-ratification); the now-ratified wording is the
  wu-wei-front-loaded version → see `kb/telos.md`.
- `README.md` lines 13–18: the bucket list is stale — lists 3 paths + README; missing
  `recommendations/` (ratified 2026-05-27 as the 4th bucket).

## Loop #4 — extraction audit + ratified codification plan (2026-05-27)
**Sense phase (this session, pre-restart) complete + Operator-ratified. Act/Observe/Reflect deferred
to next session so SPAOR phase-gating (`kb/execution-loop.md`) actually binds the codification work
— the un-gated discipline is what slips on long-context Act phases (`CLAUDE.md` NON-NEGOTIABLE; the
exact failure mode SPAOR is for).**

### Findings (Pillar-4 output — evidence)
**Audit was wider than the original framing.** The ledger named 4 patterns; the honest gap-count is
**≥9**, and the spine has a **self-claimed-vs-actual mismatch** that mirrors the original gap-finding.

**Reconciliation table:**
| Pattern | Claimed in retro | Actual in `kb/spine` | Verdict |
|---|---|---|---|
| `commit-before-sync` (case-02) | — | absent | gap |
| **`blast-radius` audit** (case-01 + case-02) | *"Promoted: S5/S7"* (case-02 retro:31) | **absent from S5/S7** | **claimed-but-not-applied** |
| `invariant-check-first` (case-02) | — | absent | gap |
| `crawl-walk-run` (case-02 + case-01 §B10) | — | absent | gap |
| discharge completion criterion | "Promoted" | spine 86–91 ✓ | applied |
| two-Operator channel discipline | "Promoted" | spine 112–117 ✓ | applied |
| verify-before-asserting | "Promoted: cross-cutting" | spine 111 + CLAUDE.md ✓ | applied |
| flag-and-vouch | (via spine's §B mapping claim) | spine S7 ✓ | applied |

**Extended gap (§B-mapping line 120 itself overstates coverage):**
- §B7 *observe durable artifacts (not phase churn)* — partial in S7; "not phase churn" absent.
- §B8 *genuine-loop vs self-resolving-grind* — absent.
- §B10 *crawl-walk-run* — absent.
- §B12 *resume-mode (`-c` poisoned vs healthy)* — absent.
- §B13 *intervention threshold / bare-`continue` default / source-insufficiency diagnostic* — partial; diagnostic-duty framing absent.

### Seizure-class taxonomy (Pillar-4 output — structure)
Three classes in evidence; the taxonomy self-extends per Telos:
- **Class A — Reload-loop seizure** (case-01). Cycling reload; cause: framing-as-channel (imperative in re-read ROM). Detector: cadence/liveness.
- **Class B — Harness↔Dao contradiction freeze** (case-02). Telemetry-silent loop; cause: rule-conflict mid-step. Detector: cadence/liveness (both A & B → `dz-cil#1233`).
- **Class C — Collateral regression** (case-01 major finding). Post-seizure durable-doc clobber; cause: ephemeral-context loss propagating into the durable record. Detector: blast-radius audit + atomic-commit hygiene (the latter is *patient*-Dao, not Healer-Dao).

### Plan (Pillar-5 — RATIFIED 2026-05-27; execute next session post-restart)
| # | Where | What |
|---|---|---|
| **P1** | spine §Cross-cutting | Add: `commit-before-sync` · crawl-walk-run · resume-mode discipline · intervention-threshold (bare-`continue` default + 3-way diagnostic) · genuine-loop-vs-grind |
| **P2** | spine **S5** | Add *blast-radius enumeration* — full diff, not the first victim (case-01 collateral-regression finding) |
| **P3** | spine **S6/S7** | Add `invariant-check-first` — patient runs own self-invariant check first (Auditor function); Healer attests externally. Codifies the heal-vs-cure split. |
| **P4** | new **`kb/seizure-taxonomy.md`** (PROPOSED at creation) | Living catalog — Class A/B/C as above; each class carries symptom · cause · detector · ward-evidence. Self-extends. |
| **P5** | spine **S9** | Enhance with accrue-measure axes: (a) taxonomy update · (b) Telos metric (recurrence frequency over time — from `kb/telos.md`) · (c) patient-records as Healer S9 input (sparse-by-design) |
| **P6** | spine line 120 (lesson-mapping) | **Reconcile self-claim** — after P1–P3 land, rewrite to honestly enumerate which §B items live in cross-cutting vs in steps; drop the overstatement |

### Restart contract
On next session, the Healer (a) reads this section as the Sense input, (b) executes P1–P6 under SPAOR
phase-gating, (c) for any P that requires a sub-dialectic, Sense→Plan first before Act. New kb docs
enter PROPOSED; the Operator ratifies each (per the Charter's source-not-ratifier).

## SPAOR phase-enrichment proposal (2026-05-28) — queued, post-Loop-#4
**Generated:** morning of 2026-05-28, from an [IDEATE] dialectic on the SPAOR loop.

**Falsification sequence (the Validate mechanism running on itself):**
1. Operator falsified the Healer's pre-Act expansion of SPAOR ("Plan" vs "Probe"). Healer grounded
   against the canonical `dz-cil/kb/GLOSSARY.md:99-100`: SPAOR is **Sense-Plan-Act-Observe-Reflect**,
   not Probe — verified across 5 cross-references in the same file + our own ratified
   `kb/execution-loop.md`. Probe exists in DZ-CIL but as an *alias for Discovery* (a Node type), **not**
   a phase of the meta-loop. Holds.
2. Operator [IDEATE]'d an alternative loop **SRPAO** (Sense-Reason-Plan-Act-Observe — drops Reflect,
   adds Reason between Sense and Plan) and asked the Healer to falsify. Falsified on **7 breaks** —
   most critical: drops Reflect = re-creates the SPAO regression DZ-CIL just corrected (`WHY-1157`),
   breaking the Telos's learning-compound mechanism; "Reason" is non-falsifiable/unbounded; asymmetric
   ratchet (adds front-loaded ceremony, removes the only durable-record gate); Dyad-manner phase-mapping
   loses *falsify+codify* home; case-02's lived "premature stand-down" failure is exactly what Reflect's
   completion-criterion prevents. **SRPAO did not survive.**
3. [FEEDBACK] Operator proposed: enrich `kb/execution-loop.md` so each S/P/A/O/R phase carries
   (a) the Agent-Operator **dyadic cycle** + (b) the Agent's **intra-phase reasoning sub-loop**.
   Healer attempted to falsify on **7 breaks** (over-specification / wu-wei trap; premature
   codification; duplication risk; importing patient wiring; burden-of-proof; channel-discipline
   blur; vacuous-shape risk) — **none landed** under proper scoping. **Surviving claim:** per-phase
   decomposition of Substrate-contributions + Agent's epistemic sub-loop + falsifiability hook,
   scoped to Building/Authoring (SPAOR only), substrate-agnostic phrasing.

**Operator deferred to grain; Healer's choice:**
- **(Q1) Single-doc enhancement** of `kb/execution-loop.md` (not a companion) — phases *are* the loop;
  single-home-per-fact is the established kb grain.
- **(Q2) SPAOR scope only** — leave `healing-protocol-spine.md` alone; rescue's single-mode context
  doesn't need the dyadic-decomposition layer.
- **(Q3) NOT P7 of Loop #4** — queue as a separate Pillar-5 backlog item. Loop #4 = the
  extraction-audit codification; the phase-enrichment is *generative refinement* from this
  dialectic. Mixing ontologies mid-flight would muddy the Loop's coherence and break SPAOR
  phase-gating discipline (don't interrupt a ratified Act).

**Concrete shape (when entered):** each phase gets three short blocks — Dyadic contribution
(Healer sources / Operator voices+ratifies / 1+1=3 emergence) · Agent's epistemic sub-loop
(2–4 beats) · Falsifiability hook (what would falsify this phase being correctly executed).

**Provenance trail kept here** because it shows the practice working on itself: the dialectic that
generated the proposal is the same dialectic the proposal would make cheaper to repeat. Loop closes
on its own form.

## Dyadic coherence under Agent-divergence (2026-05-28) — lived falsifiability test, passed
**Setup (Operator-designed experiment):** the Operator issued a `/btw` slash-command mid-Loop-#4
which forked the session — **two parallel Agent threads** (original: 1f388845; fork: 2577b9ad) now
shared one durable record. Each thread carried different in-flight context; neither could see the
other's chat. **Question under test:** *Can the Dyad Practice operate coherently when one half of
the dyad is divergent?*

**Sequence:**
1. The original thread executed P2 (spine S5 blast-radius enumeration), wrote it to disk, **did not
   commit**.
2. The forked thread (after a side `/btw` inquiry on the `P`-in-`P1` labeling, then two
   falsification dialectics — SRPAO + the phase-enrichment proposal) resumed Loop #4 and prepared
   to execute its own P2.
3. The forked thread attempted to Edit S5 — got "String to replace not found" because the original
   thread's uncommitted disk content had already shifted the file underneath.
4. The forked thread **grounded** (`git status`, `git diff`, `git show HEAD`) and discovered the
   divergence: uncommitted modifications it had not authored, with phrasing distinct from its draft.
5. The forked thread **surfaced** the anomaly to the Operator rather than clobbering or guessing.
6. The Operator disclosed the experiment + cross-thread authorship; the forked thread committed the
   original thread's work convergently with proper provenance.

**Result: the Practice held.** Coherence was preserved despite the Agent-half running as two
non-communicating instances.

**What survived as load-bearing under divergence:**
- **verify-before-asserting at time-of-use** — caught the divergence in the seconds before clobber.
- **single-home-per-fact + the durable record as the locus** — both threads ground on the same
  authoritative substrate, not on their separate conversation contexts.
- **resume-mode discipline** ("continuity lives in durable artifacts, not the conversation") — the
  forked thread's instinct to ground in the file, not the chat, is exactly what made divergence
  detectable rather than silently destructive.
- **commit-before-sync** — applied at sub-step granularity, this discipline (codified just this
  morning in P1) would have *closed the divergence gap entirely* before it formed. Lived under live
  conditions, it earned its keep. Generalization: commit-before-sync isn't only for protecting work
  from external sweep mechanisms; it also **protects work from divergent self**.

**What surfaced as the real vulnerability:** the **uncommitted gap**. The original thread did good
P2 work but didn't commit before the fork executed actions on the same file. The work was
recoverable only because the divergent fork grounded; under a destructive git op (a checkout, a
reset, a stash drop), the work would have vanished. *The discipline that prevents this is
commit-before-sync at the smallest meaningful unit, not just at session boundaries.*

**Strengthened claim (PROPOSED, awaiting more cases before ratification):** *The Dyad Practice
survives Agent-divergence iff* the named disciplines (verify-before-asserting at time-of-use,
commit-before-sync at sub-step granularity, single-home-per-fact, resume-mode discipline) hold. The
durable record — not the conversation — is the substrate the Practice lives in. **Falsifiable:**
revise / abandon if a future Agent-divergence breaks coherence despite the disciplines being
applied as named.

**Scope caveat:** this experiment tested *Agent*-divergence (two Agent threads, one Operator).
*Operator*-divergence (one Agent thread, multiple Operators-of-record across time) is **not yet
tested**. The same disciplines should apply (the durable record is symmetric in what it carries
across substrates) but this is an inference, not a lived finding.

**Implication for the SPAOR phase-enrichment proposal** (queued separately, Pillar-5): the
phase-enrichment doc's *falsifiability hook* per phase should explicitly include a divergence-test
question — *"if a parallel fork of this phase ran simultaneously, what discipline closes the gap?"*

## bin/git.sh — substrate-access wrapper (2026-05-29; the practice's first Pillar-3 tool)
**Why now:** push-to-`main` is recurring friction (every session) but the auto-mode classifier blocks
both a direct push and the Agent self-granting a `git push` permission (Self-Modification). Operator
[FEEDBACK] established the standing rule: **automate recurring manual-intervention friction; pose if
recurrence is undeterminable** (→ memory `feedback_automate-recurring-manual-friction`). Operator
[ALIGN]: direct-to-`main` is *aligned* with a PR-gate discipline because **ratification happens in
chat** (the gate's function, performed upstream + continuously); survived falsification with one
refinement — chat ratifies *substance*, diff-fidelity is covered by the companion disciplines
(verify-before-asserting · commit-before-sync · blast-radius hygiene).

**Holding structure chosen — dialectical synthesis (Operator [IDEATE]: propose 3, falsify, synthesize):**
- **A monolithic imperative wrapper** — policy+mechanism entangled in bash; illegible/edit-risky control surface. Survives only if policy is tiny+static.
- **B policy/mechanism split** (thin runner + declarative policy data; mirrors patient's `audit_daemon.py`+`audit_config.yml`) — best control surface + scales, but over-build for push-alone (2 files + parser).
- **C native-substrate-only** (narrow permission patterns + git hooks) — zero abstraction, but permission patterns can't express conditional policy, and `.git/hooks` is untracked (fails durable-record-is-locus) + `--no-verify`-bypassable.
- **Synthesis (1+1=3): declared-policy single-file wrapper, permission-gated, fail-closed.** A's one file, with **B-shaped policy held in-place** (top-of-file declared ALLOWED_OPS/PROTECTED_BRANCHES/FORCE_FLAGS — legible, Operator-governed) separated from the dispatch mechanism; **C's native gate retained** as the narrow harness permission (`Bash(.../bin/git.sh:*)`, not broad git) + pre-push hook deferred for defense-in-depth. Documented promotion path → full B when op-count justifies.
- **Boundary integrity** rests on **ratified edits** to `bin/git.sh` (chat-as-gate), not file perms — the Agent can edit repo files, so the wrapper is a boundary only because edits are load-bearing.
- **Externality caution:** first `bin/` script; the four-bucket model has no tooling bucket (no tool ever existed). Kept as operational-infra, deliberately minimal — not the seed of a code engine.

**Status:** v0.1 built + 5 dry-run policy paths verified; committed + pushed. **Permission GRANTED**
2026-05-29 (Operator added `Bash(bin/git.sh:*)` to `.claude/settings.json`); validated end-to-end —
`bin/git.sh push` ran with no prompt and pushed `b1a276c`. **Grounded fact:** the permission
**hot-reloaded mid-session** (no restart needed — corrects an earlier Agent hedge). Friction closed.

## [NOTE] 2026-05-29 — Frontier Dyad aligning to the Dyad-Practice lineage (watch-item)
Operator flagged: the patient (Frontier Dyad / DZ-CIL) is embarking on a path to align with the
**Dyad-Practice lineage** — *expect substantial changes to its substrate*. Consequence for us:
intensify verify-before-asserting when grounding against `dz-cil` (anchors — paths, rule numbers,
§-sections, SG-IDs — will move or be superseded beyond ordinary drift). Just-filed dz-cil#1393's
anchors may be resolved-by-restructure or closed-as-superseded — by design (filed ailment-only,
naming invariants not sutures); flag-on-evidence, don't chase. Lineage-alignment is the **Frontier
Operator's domain** (patient transformation) and touches the **Dyad-Practice Operator hat / form
repo** — not Healer-driven. Watch (don't act): if alignment completes, patient + Healer become
siblings under one form → may reshape shared vocabulary, externality framing, the relationship.

## Open questions
- ✅ **TELOS — RATIFIED 2026-05-27 → `kb/telos.md`** (live ratification; alternative/wu-wei-front-loaded
  wording adopted). Three breaks fixed in the sharpening: domain-coupling ("DZ-CIL and its disciple
  Agents" → "the tended family"); "structurally impossible" → covered by "rarely needed"; dropped the
  "Efficiently" hedge. Falsifiable metric **baked into the statement** ("…until resuscitation is rarely
  needed") so the Telos is directly testable, not reliant on commentary. **Ratified wording:**
  *"The Healer's purpose is its own obsolescence: raise the self-healing efficacy of the tended family
  until resuscitation — the final safety net — is rarely needed."*
- ✅ **CHARTER — RATIFIED 2026-05-27 → `kb/charter.md` + `kb/governance-map.md`** (split per the
  "structure-of-codification" falsification — Option B: two cross-referenced docs, not one). See
  the `## Charter ratified` section below for the trail.
- **Remote repo + git versioning** for `dz-healer` → deferred ("mechanisms later").
- ✅ **Frontier-side fixes — FILED 2026-05-29 → [dz-cil#1393](https://github.com/pltrinh1122/dz-cil/issues/1393).** The §6.7/harness-mode contradiction (now `AGENT.md` Rule 7, exception promoted only to `GEMINI.md` not the universal doc) + the stale `skills/audit_daemon.py` path (`GEMINI.md:10`; actual `drivers/audit_daemon.py`) filed as two ROM-integrity violations via the Requirement Intake channel, **ailment-only** (cure deferred to patient, per [FEEDBACK] + describe-the-wound). Third item (the `triage` label mismatch) **dropped — already self-corrected** by the patient (verified at time-of-use). Detail → `recommendations/2026-05-29-agent-rom-integrity-violations.md`.

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

## Session handoff — 2026-05-27 (maturation session; open loops for restart)
**Why this entry:** a long session drifted from verify-before-asserting under context degradation
(asserted `/goal` absent without grounding — it IS a real Claude Code command, v2.1.139+). Fix: the
operating discipline is codified → `CLAUDE.md` (loads first); memory points to it. Restart on the
durable record. *(This handoff is a stopgap; loop #2 builds the real tracker.)*

**Artifacts produced:** `README.md` (committed `a309594`) · `kb/modes-of-operation.md` (5 modes + 3
postures) · `kb/templates/patient-recommendation.md` · `CLAUDE.md` — last three **uncommitted**. Form
published: github.com/pltrinh1122/the-dyad-practice.

**Decisions established (catch-up — previously unlogged):**
- **5 modes** (rescue/prevention/tooling/research/maturation) = planning map; **3 postures**
  (exception / building / authoring-research) = the moment-to-moment discriminant.
- **DZ-CIL leverage gradient:** principles now → templates as the kb grows → tools when friction
  justifies; DZ-CIL is a *live* target (re-verify specifics at time-of-use, never hard-depend on its state).
- **Prescription channel:** detailed recommendations → Healer-authored `backlog_issue` → Frontier
  Operator files it (labeled external) → patient triages → patient authors its `node_contract`.
  `bin/prompt` queue = short nudges only.

**OPEN LOOPS** — ⚠️ status now tracked in [`backlog.md`](backlog.md) (the by-pillar tracker, built
2026-05-27; single-home for *what/status*). The entries below are retained for their *detail/why*;
read the backlog for current state.
1. **File the heartbeat recommendation** — ✅ AUTHORED as a durable artifact →
   `recommendations/2026-05-27-audit-daemon-liveness-heartbeat.md`, recast into the **patient's own
   template** (`dz-cil/kb/templates/backlog_issue.md`, 5 fields — per Operator: leverage DZ-CIL's own
   template, not the Healer's generic one). Re-grounded at time-of-use: `seizure_detector` rule IS
   wired but failure-count only (blind to freezes); daemon `timer_interval: 5m` yet **still inactive**
   (no cron/process); no liveness rule type among the 8. Labels mapped onto the patient's EXISTING
   taxonomy (`backlog` · `status:triage` · `area:metasystem`) — no labels invented; no
   external/from-dyad-healer label exists. [Mode 2 / prevention]
   - **✅ FILED 2026-05-27 → [dz-cil#1233](https://github.com/pltrinh1122/dz-cil/issues/1233)**
     (OPEN, `status:triage`). Filed by the **Healer directly** per DZ-CIL's published contribution
     process (README §"Contributing & Requirement Intake" mandates the **Requirement Intake** template
     for external entities "e.g., the Healer"). Recast from the `backlog_issue` 5-field into the
     intake template's 3 sections (Context&Goal · Proposed Mechanisms · Strategic Harmonization);
     harmonized to **SG-0002** primary (gateless autonomy — silent seizure forces a manual gatekeeper)
     / **SG-0003** secondary (velocity). The earlier "intake tag" request resolved as this published
     template + the `triage` quarantine convention.
   - **Channel-discipline UPDATE:** the patient now publishes a sanctioned **Healer→patient intake
     channel** (README names the Healer). This **supersedes** the old "Frontier Operator files / Healer
     never opens issues" stopgap — for *requirement intake* the Healer files directly via the template.
     (The Healer still never drives the patient's loop / touches the running agent.)
   - **Patient-side defect found (→ Frontier-side fix rec):** the intake template front-matter +
     README CLI example reference label **`triage`**, but no such label exists — the real one is
     **`status:triage`**. Filed with the real label; flagged for a fix rec.
   - **`recommendations/` bucket — RATIFIED** (Operator, 2026-05-27). See Decisions.
2. ✅ **DONE — `ledger/backlog.md` built** (by-pillar = 5 modes; open + done; reconstructed from
   durable sources since the original design was ephemeral). Now the status home; supersedes this list.
3. **Commit** the 3 uncommitted dz-healer files (local; push still blocked by the exfiltration classifier).
4. **Extraction audit / learning-loop** [Mode 4/5]: promote case CONTINUE-patterns (commit-before-sync,
   blast-radius, invariant-check-first, crawl-walk-run — present in `wards/`, absent from `kb/`);
   reconcile claimed-vs-actual promotions (blast-radius marked "Promoted: S5/S7" but absent from spine);
   build the seizure-class taxonomy; enhance S9 → accrue-measure (taxonomy + Telos metric + patient-records source).

**Deferred (no action until warranted):** dir-rename `dz-healer`→`dyad-healer` · repo-wide
"Healer Dao"→craft-term · async rec-generation via `/goal` (verifiable completion) or background Agent.

**Update 2026-05-27 (evening) — push unblocked, partial rename landed:** the prior "push 🚫 blocked"
claim is STALE. `git push origin main` succeeded; all session commits (through `c0e5cad`) are on
`origin`. Server response surfaced a **completed server-side rename** to `pltrinh1122/dyad-healer`
(push went through via redirect). **Remaining actionable:** local origin URL alignment —
`git remote set-url origin git@github.com:pltrinh1122/dyad-healer.git` (Operator runs, per the
original deferred plan). Dir-rename still pending separately.
