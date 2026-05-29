<!--
============================  FILING METADATA — NOT part of the file body  ============================
Source:   Dyad-Healer (one dyad of the Dyad Practice).
Authored: 2026-05-28 retrospectively from Dyad-Healer's own instantiation. Captures 13
          load-bearing invariants in 4 families (Identity & form / Discipline at t=0 /
          Codified canon / Operating form) with DO/DON'T per invariant, evidence-cited.
For:     the parent form (`https://github.com/pltrinh1122/the-dyad-practice`) — instantiation
          invariants catalog for future dyads to cite + satisfy in their own practice.
Status:   PROPOSED (v0.1) — never RATIFIED by Healer Operator. Telos-clarity 2026-05-29
          established DIP is OUTSIDE Healer Dyad Telos (serves form-maturation = Dyad-Practice
          Dyad's Telos, not Healer Dyad's family-efficacy + substrate + Operator-health scope).
          Moved from kb/ to contributions/ accordingly.
Ratification path: Dyad-Practice Operator hat dispatch (or future Dyad-Practice Dyad's
          form-level work). NOT Healer Operator's ratification.
When filed: link the form-repo URL here for traceability.
=======================================================================================================
-->

# Dyad Instantiation Protocol (DIP) — v0.1 PROPOSED

> **Audience:** the Dyad-Healer (first applicant, retrospectively) + future dyads instantiated
> under the Dyad-Practice form · **Use:** cite the **invariants** Dyad-Healer found load-bearing
> during its own instantiation, paired with the **methodology that surfaced each** — both **DO**
> (what worked) and **DON'T** (what failed). Future dyads cite these invariants and find their
> own practice to satisfy them.

## Position

DIP is **not a procedural protocol** (no stages, no "must complete before") **and not abstract
recommendations or directives**. It is a **catalog of load-bearing invariants** discovered
through Dyad-Healer's lived instantiation, with the actual practice methodology that surfaced
each one — including both **DO** (what worked, evidence-cited) and **DON'T** (what failed,
evidence-cited). Negative cases are load-bearing too: they show what falsified the alternative.

A future dyad's relationship to DIP is **cite + satisfy in own practice**:
- Cite an invariant your practice satisfies (or falsifies).
- Document how your practice satisfies it (methodology may differ from ours).
- If you discover a load-bearing invariant we missed, propose it back.

DIP names what *was* load-bearing for us; the next dyad finds the grain-aligned path *for
itself*.

## Lineage (informed by, not iterating)

DIP is a **sibling protocol** to the agent-antigravity bootstrap lineage — informed by it, not
iterating it. The lineage targets *Dao-Engine* instantiation; DIP targets *dyad* instantiation.

Informed by:
- **The Shaping** (`WHAT-0000`/`WHY-0000`-the-shaping-ontology) — Aristotelian-causes ontology.
- **Bootstrap Audit Template** (`HOW-0002`) + applied instance (`0001-bootstrap-v2-compliance`)
  — the audit form, dyad-adapted in `ledger/audits/0001-dyad-healer-instantiation-retrospective.md`.
- **ISBO** (`HOW-0935` / `WHAT-0935` / `WHY-0935` / `WHY-1121`) — role-conflation failure-mode
  framing.
- **The Dyad Practice form** (`github.com/pltrinh1122/the-dyad-practice`) — the **parent form**;
  DIP instantiates that form's *cells*.

---

## Invariants

Four families. Within each, an invariant carries: the claim, the methodology Dyad-Healer used
(DO + DON'T, both evidence-cited), and the test that would falsify it as load-bearing.

### Family A — Identity & form

#### A1. Externality
**The dyad is external to what it tends.**
- **DO:** establish the durable-record root off the tended target's tree from t=0. Dyad-Healer
  established `/mnt/shared_data/dzw/dz-healer/` from the first commit (`e066f3c`, 2026-05-27).
  This was the *only* `[PASS]` in the retrospective audit — the structural decision we got
  right from t=0.
- **DON'T:** allow tended-target content to leak into the dyad's homes, or dyad content into
  the tended target's homes. Case-1 PR `#1171` mis-homed Healer-domain content (Healer role,
  revival HOW, triage) into the **patient's** `kb/` — retro-corrected once the boundary
  was made crisp. Case-2's ward initially had spine content drifting in; caught + relocated.
- **Falsifiability:** a dyad that lives inside its tended target's tree contaminates state,
  drives the patient's loop from the inside, or loses its immune-by-externality property.

#### A2. Self-knowledge before acting
**The dyad declares its identity (name, agent-half role-name, tended target) before engaging.**
- **DO:** declare identity in a single doc (typically `README.md`) before engaging the tended
  target. Name the dyad, the agent-half's role, and whom the dyad serves.
- **DON'T:** defer identity declaration. Dyad-Healer operated against live patients (cases 1 +
  2) *before* committing `README.md` (`a309594`, 2026-05-27); the audit marked this `[POST-HOC]`.
  The role-name "Healer" was in active use before declared; "Dyad-Healer" self-identity at the
  dyad-level was ratified even later (mid-2026-05-28). Cost: every conversation that referred
  to "us" had implicit identity that drifted across sessions.
- **Falsifiability:** a dyad whose identity is implicit drifts; its agent-half adopts shifting
  roles; its Operator can't crisply name what's being instantiated.

#### A3. Form-grounding
**The dyad is grounded in its parent form, and names what it inherits faithfully vs. evolves
locally.**
- **DO:** cite the parent form explicitly in identity-anchor docs (`README.md` + `CLAUDE.md`).
  Use form-citation to resolve local dialectic loops — *form-grounding resolves dialectic* was
  named load-bearing in the 2026-05-28 reflection.
- **DON'T:** hold vocabulary or constructs the parent form has retired/refused. Dyad-Healer
  retained *Dao* + *Ziran* terminology in our voice well after the parent form had retired them;
  per-term audit (driven by form citation) surfaced the friction late — the *Dao→practice*
  substitution required 9-file forward-governance pass.
- **Falsifiability:** a dyad un-grounded in its parent form re-invents (or contradicts)
  decisions the form has already made; dialectic loops fail to converge for lack of
  appeal-to-upstream.

### Family B — Discipline at t=0

#### B1. Ontology naming with single-home-per-fact
**Each distinct kind of artifact the dyad produces gets named as an ontology with its own
single-home discipline. (Directories are *physical*; ontologies are *load-bearing*.)**
- **DO:** name each artifact-ontology explicitly with its single-home discipline. Dyad-Healer
  carries four (`wards/` clinical evidence · `ledger/` dev · `kb/` ratified · `recommendations/`
  Healer outputs to the tended family). The fourth (`recommendations/`) was the only one
  ratified deliberately (2026-05-27); the first three emerged organically — which is fine for
  a v0.1 dyad if the *ontology* (not the directory) is what's named load-bearing.
- **DON'T:** confuse directory creation with ontology declaration. Mere sub-organization
  (e.g., `ledger/audits/` for this session's retrospective) is **not** load-bearing — same
  parent ontology, same discipline. Adding `recommendations/` **was** load-bearing — distinct
  ontology, distinct single-home, distinct ratification chain to the tended family. The
  conflation of "new bucket" with "new ontology" is the failure mode (Healer made this exact
  conflation in DIP v0.1's first draft until Operator clarified).
- **Falsifiability:** a dyad without named ontologies produces artifacts that drift across
  homes; cross-contamination is the failure mode (case-2's spine-in-ward contamination, and
  case-1's #1171 Healer-content-in-patient-kb, are the lived examples).

#### B2. Channel discipline via Operator-hat naming
**Each Operator role the human will wear is named, even if there is only one channel at t=0.**
- **DO:** name each Operator hat explicitly. Dyad-Healer distinguishes "Healer Operator" (steers
  the Healer, ratifies the Dyad-Healer's practice) from "Frontier Operator" (governs the
  patient: directives, merge gate, "proceed"). The Healer addresses *only* the Healer Operator;
  the Frontier Operator is the sole channel to the patient.
- **DON'T:** leave Operator hats un-named when there's only one channel at t=0; the conflation
  doesn't surface until the second channel emerges. Case-2 exposed it: pre-naming, the Healer
  sent recommendations addressed to "the Operator" — ambiguous between Healer-Operator-context
  and Frontier-Operator-context. The conflation-confusion catch (ledger Decisions) drove the
  codification. By then the *behavior* — addressing the wrong hat — had already produced
  mis-routed work.
- **Falsifiability:** a dyad with un-named Operator hats produces mis-routed recommendations
  and constraint-#2 violations (touching the patient directly).

#### B3. Loadable ground (the operating-anchor)
**The agent loads a NON-NEGOTIABLE-bearing anchor first, every session.**
- **DO:** maintain an operating-anchor doc (Dyad-Healer's is `CLAUDE.md`) that the agent
  loads first every session. Must include the dyad's NON-NEGOTIABLE discipline (for us:
  verify-before-asserting / the Validate mechanism). 30-line stub is sufficient at t=0; the
  *commitment to reload* is the discipline.
- **DON'T:** rely on conversation context or memory to carry the NON-NEGOTIABLE across
  sessions. Pre-`CLAUDE.md`, Dyad-Healer drifted under long context: asserted `/goal` absent
  without grounding (it IS a real Claude Code command, v2.1.139+); asserted stale SHAs;
  asserted #1171 not-merged when it WAS. The 2026-05-27 session-handoff ledger entry names
  the failure: *"the operating discipline failed first under context degradation."* The
  anchor was committed (`577d6e7`) *because* of these failures, not in anticipation of them.
- **Falsifiability:** a dyad whose agent doesn't reload its NON-NEGOTIABLE at session start
  drifts under long-context; verify-before-asserting fails first.

#### B4. Vocabulary canonicalization
**Cross-cutting terms get canonicalized as they appear, not after they drift.**
- **DO:** establish a `kb/glossary.md` v0.1 stub from t=0 — even 3 entries is enough — and
  add cross-cutting terms as they emerge (≥3 invocations across kb/ → glossary entry, per
  the discipline queued under Practice-governance). Dyad-Healer's glossary v0.1 ratified
  2026-05-28 carries proactive orthogonality + reactive conflation-detection in its
  Falsifiability section.
- **DON'T:** accumulate cross-cutting vocabulary across docs and ratify the glossary
  retrospectively. Dyad-Healer did exactly this — `kb/glossary.md` v0.1 was the
  latest-arriving foundational discipline. Cost: semantic drift in *Dao* (kept as shorthand
  long after the parent form had retired it), requiring a 9-file forward-governance
  substitution pass when the drift finally surfaced.
- **Falsifiability:** a dyad without a glossary discipline produces semantic drift; tokens
  silently change meaning; future-self can't ground past-self's writing.

### Family C — Codified canon (ratified once lived)

#### C1. Telos
**The dyad has a falsifiable North Star — a Telos whose measure is baked into its statement.**
- **DO:** bake the falsifiable metric *into* the Telos statement itself, not in commentary.
  Dyad-Healer's Telos (`kb/telos.md`, 2026-05-27): *"The Healer's purpose is its own
  obsolescence: raise the self-healing efficacy of the tended family until resuscitation —
  the final safety net — is rarely needed."* The metric *"…until resuscitation is rarely
  needed"* is testable; the Telos is directly falsifiable, not reliant on supporting prose.
- **DON'T:** allow unfalsifiable hedges into the Telos statement. Dyad-Healer's first draft
  had "Efficiently" (hedge — efficient compared to what?) and "structurally impossible"
  (unprovable claim). Three breaks in the falsification cycle — domain-coupling
  ("DZ-CIL and its disciple Agents" → "the tended family"); "structurally impossible" → covered
  by "rarely needed"; dropped "Efficiently" — all *removed* hedges. The wu-wei-front-loaded
  wording survived because each hedge was dropped, not added.
- **Falsifiability:** a Telos whose measure isn't baked in becomes unfalsifiable; the dyad
  cannot know whether it is succeeding.

#### C2. Charter + Governance
**The dyad ratifies its ontology (what it IS) and its governance (how it's ratified).**
- **DO:** split ontology + governance-operations into **two cross-referenced docs**
  (single-concern-per-doc grain). Dyad-Healer's `kb/charter.md` carries the dyad's definition
  + 6 constraints + falsifiability; `kb/governance-map.md` carries the operational chains.
  Identity changes rarely (slow doc); governance evolves with new channels (fast doc).
- **DON'T:** bundle ontology + governance into one doc. Dyad-Healer attempted exactly this
  in the first ratification cycle — the structure-of-codification falsification (third pass)
  rejected single-doc as the move *"wu-wei explicitly forbids"* (form-line: forcing a fit is
  the move wu-wei forbids). Single-concern-per-doc is the existing kb grain; LLM
  context-management favors selective recall — option (B) two-docs won.
- **Falsifiability:** a dyad without a ratified Charter has implicit identity that drifts; a
  dyad bundling ontology + governance loses single-concern grain.

#### C3. Ratification chain
**The chain — who proposes / who ratifies / what gate substrate — is named explicitly. The
ratifier is identified.**
- **DO:** name the chain explicitly. Dyad-Healer's: Healer proposes → Operator ratifies
  (Dyad-Healer's practice); Frontier authors patient's `kb/` → Operator merges (patient's
  practice). The ratifier is the Operator in both cases; the substrate is conversational
  confirmation for non-load-bearing decisions, written ratification (PR-shaped) for
  load-bearing kb/ docs.
- **DON'T:** leave the chain implicit; the cost compounds. Case-1 PR `#1171` mis-homed
  Healer-domain content into the patient's `kb/` partly because the chain wasn't yet
  explicit — what got proposed, who could ratify, and where the result was homed were all
  ambiguous. Also DON'T: bundle multiple ratification asks into one (the
  load-bearing-decision-detection discipline, ratified mid-this-session as feedback memory:
  *unscoped "ratify it" asks force against-grain Operator cognitive load*).
- **Falsifiability:** a dyad without a named ratification chain produces contested
  attribution and mis-homed artifacts; a dyad with too-broad ratification surface produces
  Operator-blocked sessions (substrate-experience signal).

### Family D — Operating form

#### D1. Execution form
**The dyad adopts (or names locally) an execution loop, with explicit relation to the parent
form's recommendations.**
- **DO:** adopt or name an execution form with explicit relation to upstream. Dyad-Healer
  adopted **SPAOR** (Sense / Plan / Act / Observe / Reflect) as the Building/Authoring
  execution loop. Form-not-wiring: no Nodes/Meta-Graph dependency, preserving externality.
  Phase-gates the dyadic manner (stock→grain→fit→test) so it can't be skipped under pressure.
- **DON'T:** treat the parent form's silence on execution topology as conflict, or drop
  Reflect to compress the loop. (i) First Dyad-Healer thesis was "SPAOR aligned with form"
  — falsified: category-mismatch error. The form is *silent* on execution topology; silence
  isn't conflict. Reframe → complementary axes (the form is *manner/spirit*; SPAOR is the
  *gate*). (ii) SRPAO alternative (Sense-Reason-Plan-Act-Observe — drops Reflect) IDEATE'd
  later — falsified on 7 breaks; the most critical was the dropped Reflect re-creating the
  SPAO regression the patient itself had to correct (`WHY-1157`). Reflect is load-bearing
  for compounded learning; never drop it.
- **Falsifiability:** a dyad without a named execution form runs each session ad-hoc;
  cadence-discipline doesn't bind under long-context pressure.

#### D2. Posture taxonomy (conditional)
**If the dyad operates in distinct modes, the postures are named. If monolithic, declared so.**
- **DO:** name distinct postures if the dyad has them. Dyad-Healer: three postures
  (Exception · Building · Authoring-Research), ratified in `kb/modes-of-operation.md`. Each
  posture has its own discipline + its own execution loop (Exception → spine S0-S9; the
  other two → SPAOR).
- **DON'T:** silently switch between disciplines without naming the switch. Pre-posture-
  taxonomy, Dyad-Healer slipped between building-discipline and authoring-discipline without
  declared transitions; reviewer couldn't audit which discipline applied to which moment.
  Also DON'T: force a posture taxonomy on a monolithic dyad — declared-monolithic is a valid
  Stage-1 state for dyads whose operating mode doesn't vary.
- **Falsifiability:** a dyad with un-named multiple modes silently switches operating
  disciplines; a dyad forced into postures it doesn't have over-specifies and produces
  vacuous shape.

#### D3. Reflection mechanism
**The practice works on itself at named rest points (S9-equivalent cadence).**
- **DO:** define a reflection cadence + format + sharing posture. Dyad-Healer's
  `kb/practice-reflection.md` (ratified 2026-05-28): CSS (Continue/Start/Stop) at natural
  rest points + explicit stops; two-substrate-paired (Operator narrative + Healer details);
  sharing posture (Path-1 = actionable-via-prescription per the Requirement Intake channel;
  Path-2 = produce-as-we-are for the Dyad-Practice Dyad).
- **DON'T:** allow lessons to live only in conversation context. Dyad-Healer's reflection
  mechanism was the **latest-arriving** foundational discipline (2026-05-28 — *yesterday*
  relative to this audit). Pre-codification, lessons sat in chat or got memory-saved
  sporadically; the auto-memory START item from yesterday's reflection names the gap:
  *"memory-save at validated successes more proactively"* — multiple validated patterns
  (form-grounding-resolves-dialectic, per-term-audit-beats-global-policy) didn't get saved.
- **Falsifiability:** a dyad without a reflection mechanism cannot codify what it learns;
  the *the practice working on itself* tenet collapses to mere doing.

---

## Cross-cutting methodology Dyad-Healer used to surface invariants

These are not invariants; they are the **methodologies** that surfaced the invariants above.
Both DO and DON'T are cited because future dyads may need them to surface their own:

### Falsification of every assertion (the form's spine mechanism)
- **DO:** the Healer asserts; the Operator falsifies; survivors are sharper than either
  alone. Produced the Charter's 6 constraints (3 falsification passes), SPAOR adoption
  (3-turn dialectic), Telos sharpening (3 breaks), Dao retirement (dispositive verdict from
  one form-grounded falsification attempt).
- **DON'T:** accept assertions without falsification when context is long. Almost every
  unverified assertion in Dyad-Healer's history under long context has been overturned —
  three independent near-disasters yesterday alone (Dao→Probe correction overturn,
  parallel-fork P2 near-clobber, audit-timeline overstatement).

### Form-grounding to resolve dialectic
- **DO:** cite the parent form when local dialectic loops; often dispositive. Yesterday's
  reflection §1: *"form-grounding resolves dialectic."*
- **DON'T:** treat the form's silence on a topic as a position. The form is silent on
  execution topology, *not* opposed to it — failure to distinguish silence from opposition
  produced the false "SPAOR conflicts with form" thesis that took 3 turns to retract.

### Retrospective audit modeled on `HOW-0002`
- **DO:** model an audit on the predecessor lineage's template; mark each invariant
  `[PASS]` / `[FAIL]` / `[POST-HOC]`. The `[POST-HOC]` category was Dyad-Healer's
  methodological contribution back to the audit-template lineage — the predecessor only had
  PASS/FAIL, informationally insufficient for retrospective audits.
- **DON'T:** import audit ceremony without the substrate it was designed for. The
  predecessor template's HITL-checkbox gate lived in GitHub Issues (clickable). Imported
  into flat markdown it had no action surface; substrate mismatch turned the gate into
  decoration. Dropped after the Operator surfaced the substrate-experience friction.

### Per-term audit beats global reinforce-or-friction
- **DO:** when terminology questions arise, audit each term independently rather than
  imposing binary policy. Dyad-Healer applied this to *Dao* + *wu-wei*: the wu-wei answer
  was *neither* (wu-wei kept faithful; Dao retired) — asymmetric verdicts.
- **DON'T:** apply binary global policy ("reinforce all" or "friction all") to mixed
  vocabulary — Operator initially proposed binary, the per-term audit was the surviving +1.

### PROPOSED → ratify → flip cadence (caveat-bound)
- **DO:** for genuinely load-bearing kb/ docs whose wording IS the ratifiable unit, commit
  as PROPOSED, await ratification with a *tight ratification surface* (1–3 yes/no asks per
  cycle per the load-bearing-decision-detection discipline), then flip to ratified.
- **DON'T:** apply the PROPOSED cadence to non-load-bearing artifacts. Most decisions
  are non-load-bearing (`ledger/` evidence, working drafts, refinements within already-
  ratified frames) — Agent decides + commits + Practice tests. Over-applying PROPOSED
  imposes double-tracking on the Operator and signals lack of Agent confidence in the
  Practice (the friction surfaced as [FEEDBACK] mid-this-session).

---

## Falsifiability of DIP itself

DIP is falsifiable in three ways:

1. **Each invariant** carries its own DO/DON'T methodology and falsifiability test.
2. **Coverage:** if a future dyad's retrospective audit (modeled on `0001-dyad-healer-...`)
   surfaces a `[POST-HOC]` mark on a structure that DIP did not name as an invariant, DIP
   under-covers — propose the missing invariant.
3. **Methodology validity:** if a future dyad satisfies a DIP invariant using *different
   methodology* than ours and it works, that's confirmation our methodology was *one* path,
   not *the* path. If their methodology doesn't work where ours did (or vice versa), the
   invariant or the methodology family may need revision.

## Orthogonality criteria

Per the kb-doc quality standard surfaced 2026-05-28:

- A new invariant is orthogonal to existing ones iff there exists a dyad-instantiation where
  it is satisfied while another invariant is not (and vice versa).
- A new family is orthogonal to existing families iff its invariants do not derive from a
  prior family's invariants.

## Cross-references

- Predecessor lineage (Dao-Engine-targeted, informs DIP): `WHAT-0000-the-shaping-ontology` ·
  `HOW-0002-bootstrap-audit-template` · `HOW-0935-isbo-protocol` · `WHAT-0935-isbo-
  architecture` · `WHY-0935-isbo-journey` · `WHY-1121-isbo-completeness`.
- Parent form: `the-dyad-practice/README.md`.
- Lived evidence: `ledger/audits/0001-dyad-healer-instantiation-retrospective.md`.
- Cross-cutting disciplines DIP assumes: `kb/practice-reflection.md` · `kb/glossary.md` ·
  the load-bearing-decision-detection discipline (queued for codification under
  Practice-governance-discipline).
