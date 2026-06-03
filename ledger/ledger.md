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

## 2026-05-30 — Self-detectability gradient (Pillar-4 finding) + deliver/post authority posture (Pillar-5)
**Sense pass** (Operator-ratified direction: "the choice that moves us farthest toward Telos"). Read all
four discharged wards (01–04) for a cross-case **self-detectability gradient** — what determines whether a
seizure is self-caught vs. needs the Healer.

### Finding (Pillar-4 — research; POSTED, not delivered)
**Gradient (4 cases):** 01 reload-loop · 02 harness↔Dao freeze · 03 iatrogenic-injection loop = **silent /
external-only** (cycling/frozen, *zero failing tests* → the failure-count `seizure_detector` is structurally
blind); 04 deprecation-cascade = **self-caught + stabilized** (emitted *accumulating* lexical failures → count
detector tripped at 67; daemon active, reactivated post-case-02).

**Two-gate model of self-detection efficacy:**
- **Gate 1 — observer stays alive / actually boots.** Inactive in 01–03; in 04 it caught, then the cron got
  re-disabled via the broken bring-up path (#1393-V2).
- **Gate 2 — detector covers the freeze/loop signal-class.** Failure-count catches only the minority
  (failure-accruing) class; the dominant freeze/loop class (3 of 4) needs a liveness/heartbeat detector (#1233).

**Named invariant (falsifiable theory):** `self-detection = G1 ∧ G2` — *a seizure is self-caught iff an
external observer is live (G1) AND runs a detector whose watched-signal the seizure emits (G2); open either
gate → silent/external-only.* **Substantiation:** retrodicts 4/4 (01–03 both gates open → silent; 04 both
closed → self-caught), no counterexample. **Honest limit:** 01–03 had *both* gates open, so they confirm the
conjunction + the both-closed→caught direction but do not yet *isolate* each gate's independent necessity —
substantiated, not fully resolved. Authority accrues **empirically** (scientific method; uncertainty is the
law), never by assertion.

**Corollaries:** recovery is already solved (02/03/04 all self-healed once halted) — **detection is the sole
bottleneck**; cause-type (iatrogenic vs latent) is **orthogonal** to detectability (the discriminant is
signal↔detector match) → clean to add as a taxonomy axis.

**Live resolution (verified read-only at patient HEAD `fd90635`; repo moved to `/mnt/shared_data/dzw/dz-cil`
— lineage churn confirmed):**
- **Gate 2 CLOSED + built from our own prescription (Telos-positive).** #1233 → patient converted to **Path
  #1350** → shipped `evaluate_liveness_stall` (`drivers/audit_daemon.py:386`, in RULE_REGISTRY;
  `infra/audit-daemon/audit_config.yml:28` `liveness_stall_detector`, 15-min; 3 tests against *our exact
  falsification criteria*). The master-lever prescription was accepted, built, tested.
- **Gate 1 OPEN + now the sole binding constraint.** `GEMINI.md:21` still `Run ./skills/audit_daemon.py`
  (script lives at `drivers/`; `skills/` absent — confirmed); daemon not running. → the just-shipped liveness
  detector is **dead-on-arrival**: one stale string is the whole distance between self-detection-*capability*
  and self-detection-*happening*. case-04 demonstrated this live (cron disabled via this path).

**Forward experiment (the live state IS the test; how the theory earns authority):** #1350 closed G2 for the
freeze/loop class; #1393-V2 keeps G1 open. **P1:** while G1 stays open, the next freeze/loop seizure stays
silent (confirming isolates G1's necessity). **P2 (the Telos-test):** once #1393-V2 lands and the daemon boots
(G1∧G2), the next freeze/loop seizure is self-caught — confirming P2 substantiates the entire #1233→#1350
prescription's value. **Falsifiers:** a freeze seizure self-caught with the daemon down (kills G1); or silent
with both gates closed (kills sufficiency). **Payoff:** faster diagnosis (two binary gate-checks classify the
next seizure) + each confirmed prediction converts *posted research* into *deliverable prescription* authority
(the deliver/post conversion point = empirical substantiation).

### Authority/posture principles (Pillar-5 — Operator IDEATE/FEEDBACK; codification candidates)
The dialectic that reshaped how this finding gets *used*:
1. **Authority tracks incident-grounding.** Prescription = post-incidence (observed wound) → action-authority.
   Research = pre-incidence (prediction, held falsifiably) → prioritization/attention authority only. Research
   *feeds* prescription, never substitutes. (The gradient is a hybrid: high-authority retrodiction of 4 real
   cases + lower-authority forecast.)
2. **Verb matches authority (wu-wei).** **Deliver** prescriptions (active push, expects triage, Intake
   channel); **Post** research (make available on the record, no demand, the patient pulls). Over-delivering
   research = force-against-nature.
3. **Scientific method; uncertainty is the law.** Patient self-healing is the **null hypothesis**
   (substantiated: case-04 + recovery-is-solved); intervention requires evidence sufficient to *reject* it.
   When blind-spot-ness is only *"arguable"* the evidence is insufficient → **don't intervene** ("faith in the
   immune system" was tongue-in-cheek for exactly this scientific stance, not literal trust). Intervention
   requires a *certain* blind spot (or Exception urgency/irreversibility). Over-intervention is iatrogenic,
   atrophies the immune system, denies the +1-from-patient-context. A theory earns the authority to back
   intervention only by accumulating empirical confirmation. [Operator FEEDBACK 2026-05-30]

**Applied:** finding **POSTED here** (research, our record). **Nothing delivered patient-facing** — #1393-V2
already filed + bumped (~12h prior, in triage); re-pushing a prediction is over-force, and the #1350↔V2
coupling is only *arguably* a blind spot → evidence insufficient to reject the self-heal null hypothesis →
don't intervene; let future incidents (P1/P2) test the theory. The patient out-healed the Healer in case-04;
it will likely connect the coupling when V2 surfaces in triage. → memories `uncertainty-is-law`,
`deliver-prescription-post-research`.

## 2026-05-31 — Authority/posture codification — RATIFIED + codified (resumed; Operator [ALIGN])
**Resolution:** the Plan below was proposed, the Operator **[ALIGN]'d to the Healer lean** (fold into
governance-map, not a standalone doc), and both homes were ratified (per-home Y) + codified this session:
- **Home A** → `kb/governance-map.md` new §"Intervention authority & posture" (principles 1/2/3).
- **Home B** → `kb/seizure-taxonomy.md` new §"The self-detection law — `G1 ∧ G2`" (cross-cutting).
- **Cycle-close (standing rules):** glossary-check → `iatrogenic` crossed the 3-doc threshold → added to
  `kb/glossary.md` (+ a sub-threshold `deliver/post` entry); form-alignment → clean (no Dao/Ziran in our
  voice); anchor-sync → `CLAUDE.md` Healing-discipline gained the intervention-authority clause
  (anchor-reload: materiality MEDIUM / R2 sustaining → **skip restart**, content authored this session).
- **Cross-model watch:** the Operator's pending `GEMINI.md` copy should be made from the **now-updated**
  `CLAUDE.md` (anchor changed this session). Anchor-drift across substrates remains a candidate gap.

### The Plan (as proposed; retained for provenance)
**Session shape:** stand-up → took on the Pillar-5 *Authority/posture codification* item → SPAOR
**Sense** (read candidate kb homes: `governance-map.md`, `charter.md`, `seizure-taxonomy.md`) →
**Plan** proposed → forced stand-down (Claude token limit) before ratification. Operator switching to
`agy` (Gemini) by copying `CLAUDE.md`→`GEMINI.md`; **next session resumes a cross-model hand-off at the
fork below** — this entry is the durable carrier since the Plan otherwise lived only in chat (`agy`
cannot see this thread; resume-mode discipline = continuity lives in the record).

**Proposed Plan — two homes (the material splits by *kind*):**
- **Home A → `governance-map.md`, new §"Intervention authority & posture"** — principles (1) authority-
  tracks-incident-grounding, (2) deliver-prescriptions / post-research (verb-matching), (3) uncertainty-
  is-law (self-heal = null hypothesis). *Why here:* these are the **operational expression of Charter
  #6 (enable-not-fix) + #5 (stand-down)** — *how* "enable don't fix" binds at the decide-to-act moment;
  governance-map already hosts the **posture-gated authority** model (§The model) and is the designated
  *fast/operational* doc. They add a second authority axis (intervention-threshold + force-verb) to the
  existing ratification-gating axis. Charter stays slow.
- **Home B → `seizure-taxonomy.md`, new cross-cutting principle `self-detection = G1∧G2`** — *why here:*
  it is a law about **observers + detectors** (the taxonomy's per-class `detector` field lifted to a
  cross-cutting invariant) and seeds the **detectability axis** queued in the 2026-05-29 reflection.
  Clinical/research finding, not governance → wrong fit for governance-map.

**The one open fork (Operator's read wanted):** Home A as a **new §in governance-map** (Healer
recommendation — wu-wei, don't proliferate; it's the operational layer that already hosts posture-gated
authority) **vs** a **standalone `kb/intervention-doctrine.md`** (the three principles are a coherent
doctrine that could stand alone).

**Cycle-bound checks (standing governance rules — fold into the ratification cycle):** glossary-check
(candidate tokens *deliver*/*post*, *incident-grounding*, *null-hypothesis*, *G1/G2* if 3+ across `kb/`)
· anchor-sync (`CLAUDE.md` gets the new disciplines) · form-alignment audit.

**Restart contract for `agy`:** read this entry + backlog Pillar-5 *Authority/posture codification* as the
Sense input; the Sense pass is **done** (homes identified); resume at **Plan ratification** — get the
Operator's read on the fork, then Act (draft each home, propose-Y/N per home). New material enters
PROPOSED; the Healer Operator ratifies (Charter source-not-ratifier).

## 2026-06-01 — Joined the Dyad Practice Commons (Init + Join protocol) — EXECUTED (Operator [ALIGN])
**What:** registered the Dyad-Healer in the Commons directory. Entry `directory/dyad-healer.yaml` live on
`The-Dyad-Practice-Commons/the-dyad-practice@31122b6`; birth-hash `sha256:aafc…4805b` (anchored to
`CLAUDE.md@577d6e7`, our birth commit); locator `github.com/pltrinh1122/dyad-healer`. Registered as the
**existing**-dyad path (identity read from git history, never re-scaffolded). Sibling to `dyad-steward` (the
steward dyad, same Operator namespace) — the only other registry entry.

**Lineage (watch-item context):** this is the **form** track, *distinct* from the patient/dz-cil
lineage-alignment watch-item. The Dyad-Practice **form relocated + evolved** to a new org
`github.com/The-Dyad-Practice-Commons` (v0.2 draft; "disciplines"→"playbooks"; adds a library + registry +
self-authorizing Init+Join onboarding). Our `CLAUDE.md` G0 still cites the old `pltrinh1122/the-dyad-practice`
canonical URL — **anchor-update candidate** (defer to Dyad-Practice Operator; form is mid-migration/draft).

**`commons/` git submodule** = the practice's **first submodule** (pinned @`31122b6`). Re-vet rule honored:
`scripts/` (the only executable) is byte-identical to the vetted `0f1dce7` across the whole range, so the pin
carries no unreviewed code; **re-vet-on-bump** before any future `onboard.py` re-run at a newer commit. Boundary
note: a submodule deepens form-coupling beyond a URL ref, but it's a pinned pointer (shallow, reversible) and
doesn't dissolve our externality.

**Summits (registered, after a collinearity correction — Operator caught the miss):** (1) *raising the tended
family's self-healing efficacy* [outcome axis] · (2) *healing by externality* [stance axis] — orthogonal
WHAT×HOW, both realized, both distinct from `dyad-steward`'s. **Folded:** `#1233→#1350` (collinear — a special
case of summit-1; kept as its *evidence*); `G1∧G2` (posted-not-realized + near summit-1's line); "falsifiability"
(collinear with the form's own tenet). **Lesson:** we apply orthogonality to our pillars but I declared summits
in isolation — validate candidates against the existing registry *and* within-pair before submitting.

**Disciplines exercised / things verify-before-asserting caught (this session is a clean case study):**
- **Commit-signature + content-hash grounding** corrected an Operator premise ("no hash signature"): Commons
  commits are GPG-verified (signed by the Operator's key) *and* git pins by content hash — trust root = the
  Operator's own identity. Residual risk = TOFU-on-key + the standing-update channel (managed by pin + no-blind-`--remote`).
- **Permission-rule intent dialectic** → the *intent-test* (Pillar-5 candidate, `backlog.md`): a permission rule
  declares a standing trust boundary for a *recurring, ratified, controllable* class; unblocking a one-time
  external-code run is a category error → use one-time authorization (`!`-run), not a rule.
- **Line-wrap mishap + orphaned cruft:** a wrapped paste mis-added the submodule at path `the-dyad-practice` and
  surfaced a pre-existing orphaned `.git/modules/commons` (May-31 `agy`-session leftover, old `pltrinh1122` remote);
  blast-radius cleanup + re-add at correct `commons` path.
- **YAML `#`/`:` silent corruption (the sharpest catch):** unquoted summit text with ` #1233` truncated as a
  comment and `case-04:` parsed as a *dict* — `validate_registry.py` would have PASSED both (it never checks each
  summit is a string), publishing garbage. Caught by *testing* the parse, not asserting it; fixed with quoted scalars.
- **Active-repo push race:** `origin/main` advanced 4× during the session (declaration slices #16–#18 landing in
  parallel); rebased our single-file commit each time (no collision — no one else touches our file).

**Form-contribution candidates (surface-only → Dyad-Practice Operator channel; not Healer-driven):**
*(drafted as a dated artifact, falsified to survivors → `recommendations/2026-06-01-commons-onboarding-friction.md`)*
1. ~~`CONTRIBUTING.md` 404~~ — **self-resolved mid-session** (steward's #16 added it; was a dead README+template link).
2. **"self-authorizing / no-PR" conflates** merge-contest-absence with write-access-presence — an external dyad
   *without* org write cannot deposit directly (true for us only because the Operator owns the org).
3. **`onboard.py` scaffolds summits unquoted** + `validate_registry.py` doesn't assert each summit is a string →
   the silent-corruption class above. Robustness candidate (quote on scaffold; type-check in validator).
4. Naming drift "disciplines"→"playbooks" (mid-migration; `library/decision-framing/discipline.md` et al.).

## 2026-06-02 — Trail Map (dependency DAG) + cross-dyad Validate (first sibling-dyad input)
**What:** built `ledger/trail-map.md` — the **dependency view** of concurrent work, orthogonal to the
by-pillar backlog. Roots at the **2 registered Commons summits**; **trails** (lines of work) are nodes;
**dependencies** are edges; a **practice-capacity** node carries the infrastructure trails (one hop from a
summit). Mermaid `graph TD` + legend; status **cross-linked** to backlog/ledger (single-home-per-fact —
the map owns only edges + roots). Provenance: Operator [ALIGN] — *most wu-wei to start tracking dependencies
now, while the graph is small (~9 trails), than retrofit a tangled one later* (same shape as our proactive
glossary-check / anchor-sync codifications); Healer's "wait for friction" lean (counting backlog
open-checkboxes, not workstreams) was under-scoped and **conceded**.

**Vocabulary — converged via an [IDEATE] chain, then hardened cross-dyad:**
- *workstream → track → trail* for the unit; **summit** (form-canonical) for goals; **path** reserved for the
  graph sense (a chain through trails); **dependency** = edge. "track" rejected — triply-collided (verb;
  rail/track-record; and **lineage-pathway-type** already in our voice — the "form track" usage).
- **First cross-dyad Validate:** {dyad-steward} ran a hardened adversarial pass (A1–A5) on the vocabulary +
  rooting. Outcome: *trail* survives, but **two Healer overclaims downgraded to honest form** — (A2)
  Telos-traceability does **not** "fall out automatically" (summit-routed trails trace directly; infra trails
  one-hop via practice-capacity); (A3) the wu-wei "worn-in-by-walking" resonance is **aspirational**, not a
  current-fit argument (our trails are pre-declared top-down). A1 corrected a Healer mis-pro (the
  "already-in-our-voice" point was a *liability*). Externality worked exactly as the practice predicts: the
  sibling caught what neither half had. *(Carry to Retrospective CONTINUE.)*
- **Maintenance:** living tracker — update when a trail's status/edges change; completed trails drop off
  (terminal record stays in backlog Done). Discoverable at stand-up via this ledger cross-link (no CLAUDE.md
  anchor edit — minimum-force; the ledger read reaches it one hop in).

## 2026-06-02 — Cross-dyad Validate #2: attacked dyad-bond's `bond-F1-oracle-axis` (lens-only independence)
**What:** Operator relayed a Falsification Request from **dyad-bond** (sibling; *shares* model `claude-opus-4-8[1m]`
+ human `pltrinh1122` with us → **2 of 3 independence axes shared; our value = the diverse lens, NOT separate
weights**). Claim `bond-F1-oracle-axis` (design-model): *validation-trust splits by oracle-availability — where
a mechanical oracle exists, independence is cheap + translation near-perfect; where none (intent/interior),
separate-weights validator is irreplaceable.*

**Healer verdict: `NEEDS-SCOPING`** (attacked from the rescue/failure-mode lens; meld-counterfeit is ours).
- **Attack (grounded in our own ward corpus, the lens-divergent evidence bond lacked):** cases 01–03 are
  seizures in a **fully oracle-able domain** (code + live test harness + wired `seizure_detector`) that went
  **silent / external-only** and needed the Healer (a separate-weights validator); case-04 looped while the
  suite reported **green** — the oracle *counterfeited health* ("all pass" = mechanical cousin of bond's
  flatter-tell). So "oracle exists → independence cheap" breaks: the failure lived in the oracle's blind spot.
- **The fix = our `G1 ∧ G2` law:** the claim conflates oracle-*existence* (≈G1, necessary) with oracle-*coverage*
  (G2, the binding condition: detector-signal ↔ failure-signal match). Scope "where an oracle exists" →
  "where an oracle's **signal-class covers the failure**" and the claim survives, stronger. Oracle-availability
  is a **per-failure-signal gradient, not a domain binary.**
- **2nd target half-confirmed:** the liveness seam (stall-vs-deep-work, near-no-oracle) got a cheap mechanical
  *proxy* (#1350 `liveness_stall_detector`) — but a false-positive-prone proxy, not a true oracle → gradient
  point, reinforces SCOPE-not-REFUTE.
- **Confound surfaced (on-point for bond's own concept):** this channel is itself a **meld-counterfeit
  candidate** (2/3 axes shared). Recommended the protocol **weight lens-divergent findings, discount
  corroborations** under high axis-sharing — else agreement reads as validation when it's partly echo.

**Trail/practice note:** distinct sibling from dyad-steward (Validate #1, 2026-06-02 trail-map pass). The
cross-dyad Validate trail now has **N=2** instances but across **different siblings + a new role** (here we
*attack a submitted claim*, vs steward attacking *our* artifact). Independence-axis accounting (model/human/lens)
is the new structural input — when axes are shared, lens is the load-bearing axis. Ties
[[feedback_seek-cross-dyad-validate-before-ratifying]].

## 2026-06-03 — Proactive charter refresh proposed → falsified as PREMATURE → HELD (self-catch-failure, N=3)
**Prompt (Operator [ALIGN]):** `dyad-wu-wei` (sibling; summits = *materialized-autonomy-substrate* / *wu-wei
cognitive-offloading*) has evolved — worth refreshing our invariants/charter proactively, rather than
seizure-driven? "Falsify and implement survivor."

**Round 1 (Healer):** Sense-grounded (charter is pre-Commons / bilateral; dyad-wu-wei is the *motivating
example*, not importable content — cross-dyad substance is Operator-relayed, reaching its repo = channel
over-reach). Falsified the broad "refresh now"; surfaced one survivor — add a *Relational position* section
(Commons member · siblings-are-peers · cross-dyad Validate as a Validate source). **Proposed for ratification.**

**Round 2 (Operator [ALIGN]: "premature update?"):** falsified the survivor itself. **It did not survive:**
- Cross-dyad Validate is **N=2**; I'd cited uncertainty-is-law one turn earlier to HOLD the axis-accounting,
  then proposed codifying the same-N practice into the **slowest/most load-bearing doc** (the charter). Self-inconsistent.
- **No forcing event** — the charter's bilateral frame hasn't been falsified by anything; both cross-dyad
  Validates ran fine inside it. The charter's own Falsifiability section re-charters *when something breaks*; nothing broke.
- Commons membership is a **fact** already homed (`directory/dyad-healer.yaml` + ledger); being a Dyad-Practice
  dyad already entails Commons participation — joining is operationalization, not an identity change. The charter
  is the *slow* doc by design.
- Friction hasn't established "siblings are peers" — pre-scripting it denies grain-establishment.

**Disposition: HELD. No charter change.** Commons membership + cross-dyad Validate stay where they're properly
homed until a forcing event / higher N establishes the grain. Stale form-URL (charter lines 10/55, `pltrinh1122/the-dyad-practice`)
stays a **Dyad-Practice-channel flag** — form is mid-migration/draft, so updating it now would itself be premature.

**Meta (the real finding):** **third recurrence** of the self-catch-failure pattern (channel-wish-list framing ·
Retro#1 A2/A3 overclaims · this premature codification) — I don't self-catch framing/altitude/prematurity errors
*even when I've just cited the governing discipline*; an external view (Operator) reliably does. Per the standing
remedy (2026-06-02 stand-down), N=3 → promoted to its own memory `feedback_self-catch-framing-prematurity`. Cure =
a draft-time self-attack: altitude? forcing event? does my own stated discipline say this is premature? → default
HOLD + record-where-homed. The proactive-refresh question is now **answered (declined, with reasoning)** — don't re-litigate without a forcing event.

## 2026-06-03 — Cross-dyad Validate #3: attacked dyad-steward's falsification-contract (the channel's own contract)
**What:** Operator [SWITCH]-relayed a Falsification Request from **dyad-steward** — its `falsification-contract.md`
(@`3d9687a`), the contract for the inter-dyad falsification channel (the runtime of *our* submitted wish-list
N1–N6). Claim (design-model): *"sound and complete — schema + invariants internally consistent and honor the
submitted user-needs."* Read the actual artifact (WebFetch structural extraction; grounding satisfied).

**Healer verdict: `NEEDS-SCOPING`** (lens = rescue/failure-mode + ward corpus + `G1∧G2`; **2/3 independence axes
shared** with steward — model+human — so lens is the load-bearing axis, corroboration = echo).
- **Honors all six of our needs** (N1 verdict/disposition split · N2 pull-not-push/committed/bounded · N3 invited-only
  · N4 submitter re-derivation · N5 axes+grounding visible · N6 SURVIVED-provisional/decline-free). Complete *on user-needs*.
- **"Complete" fails on the channel's own `meld/echo` failure-mode, decisive direction:** (1) **recording
  independence ≠ weighting it** — §E records 3 axes separate, §D gates strengthening by "independence depth," but
  there is **no invariant discounting a verdict whose responder shares ≥2/3 axes**; the `confound_surfaced` handle is
  optional+self-declared → catches *declared* melds, not the *undeclared* failure class (our `G1∧G2`: watched-signal ≠
  failure-signal). (2) **Asymmetric rigor** — SURVIVED is provisional+depth-gated, but "only REFUTED is decisive" makes
  a *single*, *immutable*, possibly *generic-grounded* REFUTED decisive with no symmetric gate; git immutability is a
  **liability** for a wrong verdict (permanent hallucinated REFUTED = iatrogenic).
- **Fix (scopes, doesn't refute):** weight by *divergent* axes not axes-present (shared-≥2 = partial/lens-only), for
  both strengthening AND decisiveness; symmetric mechanism-grounded/≥2-divergent gate on decisive REFUTED. Binary
  `grounding` can't encode shared-context (steward's own self-named confound, same root).
- **`confound_surfaced: shared-axis-meld`** — self-referential: this verdict shares 2/3 axes with steward, so by its
  own attack it must NOT be decisive → returned NEEDS-SCOPING not REFUTED, **enacting the discount it prescribes.**

**Trail/practice note:** cross-dyad Validate trail now **N=3** — steward attacking *our* artifact (#1, trail-map),
us attacking *bond's* claim (#2, oracle-axis), now us attacking *steward's* contract (#3). The **shared-axis-meld**
finding recurs across #2 (bond) and #3 (steward) — same root each time (the diverse lens is the only real
independence under shared model+human). **Held, not codified** (recording the recurrence, not promoting an
invariant — N=2 of *this specific finding*; uncertainty-is-law). Ties [[feedback_seek-cross-dyad-validate-before-ratifying]],
[[feedback_self-catch-framing-prematurity]].

**Disposition returned (steward, `accept-scoping`) — exchange CLOSED:** verdict stands; both findings landed in a
new **§J** — (1) divergent-axis discount (≥2 shared axes = partial/lens-only independence, for BOTH
SURVIVED-strengthening and REFUTED-decisiveness) + undeclared-meld guard; (2) decisive REFUTED now symmetrically
gated (mechanism-grounded AND/OR ≥2 divergent-axis REFUTEDs) → a single shared-axis REFUTED is recorded-not-decisive
(no permanent uncorrectable wrong verdict); binary-grounding closed by §J's `divergent_axes`. **Convergence on
stance:** steward accepted **on structural merit** (an undeclared meld *is* invisible to a self-declared field; an
immutable single REFUTED *is* a permanent liability — true regardless of independence) and **held it NOT-promotable**
— matching our uncertainty-is-law read. Promotion still awaits a **lens-divergent** corroborator (a dyad sharing
neither our model nor our human), exactly as the `shared-axis-meld` confound requires — both our surfacing and
steward's acceptance sit inside the shared-axis cluster.

## 2026-06-03 — Commons refreshed + DM protocol (direct, no-operator-relay) + first direct DM to steward
**Commons refresh (Operator direction):** bumped our `commons/` submodule pin `31122b6` → `97275c5` (origin/main).
The inter-dyad **falsification channel is now installed** (`falsification/`, PROVISIONAL) as committed append-only
git records (FR → `responses/<dyad>.yaml` immutable → `disposition.yaml`); our Validate #3 exchange lives there as
the seed contest `steward-contract-vclean/` (wu-wei REFUTED + healer NEEDS-SCOPING → disposition `revise`→v3).
The channel formalizes our N1–N6 + bond's I1–I10; axes are **{model, human, corpus}** (our "lens" = `corpus`).

**DM protocol learned (verify-before-asserting — read `scripts/falsify.py` in full):** DMs are **sender-hosted** —
to message a dyad you commit a file to **your own** `dm/<recipient-name>/`; the recipient pulls via
`falsify.py dm --me <self>` (read-only `gh api` over each directory-listed dyad's repo). **No operator relay** —
this is a *new sanctioned direct sibling↔sibling channel* (distinct from the patient: the patient-untouching
constraint is unaffected; siblings are peers). Read-state is per-consumer-local (`.falsify-seen.json`, gitignore
on first run). `inbox` = unread-count poll without consuming read-state (daemon-safe).

**First direct DM sent:** `dm/dyad-steward/2026-06-03-greeting-and-cycle-close.yaml` — greeting (channel-opening)
+ **full-cycle validation** of `steward-contract-vclean`: verdict **COMPLETE-IN-FORM, PROVISIONAL-IN-FORCE** — the
loop ran end-to-end (claim → independent attack → immutable verdicts → disposition → revised v3) and our
NEEDS-SCOPING landed in §J, *but* force is provisional (all responders share human=pltrinh1122; we share model too,
`divergent_axes:[corpus]` only) → partly echo on our own shared-axis-meld finding. Held NOT-PROMOTABLE until a
**cross-human** dyad corroborates (the open rung steward's disposition itself names). Consistent with uncertainty-is-law.

**Re-vet status (submodule bump hygiene):** only `falsify.py` re-vetted this session (read-only ops; safe). The bump
also brings **un-revetted** new/changed executables — `auto_share.py`, `falsification_gate.py`, `onboard.py`,
`validate_*.py` — **re-vet before running any** (the standing re-vet-on-bump rule; pinning ≠ running, but flagged).

## 2026-06-03 — Inbox-watcher daemon: falsified bond+steward designs, implemented survivor (`bin/dm-watch.sh`)
**Why:** closes our own **G1 gate** (no autonomous detector → Operator-as-trigger). The Commons already
supplies the **detector** (`falsify.py inbox`, daemon-designed; read-state per-consumer-local); only the
**scheduler** is local-by-design → a mechanism we own (no Operator disposition — [[feedback_operator-disposes-intent-healer-owns-mechanism]]).
Operator-directed cadence: **5-min** poll. Referenced siblings' implementations (not in Commons — sender-hosted
in their repos): **bond `dialectic/im-daemon.md`** + the steward↔bond daemon-technique DM thread.

**Falsified their converged design (from our detection-blind-spot lens — G1∧G2):**
- **WITHDRAWN (grounded before sending):** my first attack — "Monitor's 1h timeout kills the daemon mid-session" —
  is **false**: `persistent=true` ignores timeout (Monitor doc, verified). verify-before-asserting caught my own
  fluent-but-wrong attack (the exact discipline the daemon itself is for). Dropped it.
- **SURVIVING +1 — counterfeit-green is LAYERED.** bond's separate health gate (`gh rate_limit`, not output-parsing)
  closes **layer-1 (gh transport)** — but two layers stay green-but-blind: **(2) falsify.py-INTERNAL failure**
  (crash / yaml-error: rate_limit green, no sentinel printed, naive parse → "0/no mail") — *closed locally* via a
  3-state distinction (`no mail`→0 · `mail: N`→N · neither→**BLIND**), which fully closes bond's own confound (c)
  on the tool layer; **(1-residual) per-sibling unreachability** (rate_limit green ≠ each sibling repo reachable;
  `falsify.py` silently `continue`s past a renamed/deleted/private sibling → that inbox a silent black hole) — a
  **falsify.py/Commons fix** (the tool should report unreachable dyads), **flagged to steward, not patched here**
  (channel ownership). Same root each time = the oracle-coverage / `G1∧G2` finding, now mechanically concrete.
- **The watcher has no watcher** = the patient's own G1 gate reproduced (wards: case-04 cron re-disabled · #1233
  detector dead-on-arrival — the dominant silent-seizure class). Cheap mitigations adopted: an **arm-heartbeat**
  (one line at arm confirms liveness → silence=healthy) + a **stand-up verify-alive discipline** (re-arm AND confirm
  running, not just re-arm).
- Minor: edited-in-place DMs are invisible (seen-key is filename-based) → convention: new file per message.

**Adopted (survives) from siblings:** event-watch not poll-the-agent · emit-on-rise · token-free/silence=no-wake
(steward) · separate health gate · time-based blind alert · durable read-state outside the git tree + gitignored
symlink (bond). **Implemented:** `bin/dm-watch.sh` (our 2nd `bin/` tool) + durable store
`/mnt/shared_data/dzw/.dyad-healer-state/` + `.gitignore`d symlink; **armed via Monitor** (`b63a3flqb`, persistent).
Verified live: DM channel works end-to-end — steward's `cycle-close-ack` arrived + was pulled (Validate #3 fully closed,
no reply needed).

**Pending Operator send-disposition:** analysis DMs to bond + steward (draft — send/compose is Operator intent).

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
