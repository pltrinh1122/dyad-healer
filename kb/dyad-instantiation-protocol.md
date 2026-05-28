# Dyad Instantiation Protocol (DIP) — v0.1 PROPOSED

> **Audience:** the Dyad-Healer (first applicant, retrospectively) + future dyads instantiated
> under the Dyad-Practice form · **Use:** cite the **invariants** Dyad-Healer found load-bearing
> during its own instantiation, paired with the **methodology that surfaced each**. Future dyads
> cite these invariants and find their own practice to satisfy them.

## Position

DIP is **not a procedural protocol** (no stages, no "must complete before") **and not a set of
recommendations or directives**. It is a **catalog of load-bearing invariants** discovered
through Dyad-Healer's lived instantiation, with the actual practice methodology that surfaced
each one.

A future dyad's relationship to DIP is **cite + satisfy in own practice**:
- Cite an invariant your practice satisfies (or falsifies).
- Document how your practice satisfies it (methodology may differ from ours; that's the point).
- If you discover a load-bearing invariant we missed, propose it back.

This shape is wu-wei-aligned: DIP names what *was* load-bearing for us; the next dyad finds the
grain-aligned path *for itself*.

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
to arrive at it, and the test that would falsify it as load-bearing.

### Family A — Identity & form

#### A1. Externality
**The dyad is external to what it tends.**
- **Methodology (Dyad-Healer):** the durable-record root was established at
  `/mnt/shared_data/dzw/dz-healer/` from the first commit (`e066f3c`, 2026-05-27), off the
  patient's tree. This was the *only* `[PASS]` in the retrospective audit — the structural
  decision we got right from t=0.
- **Falsifiability:** a dyad that tries to live inside its tended target's tree contaminates
  state, drives the patient's loop from the inside, or loses its immune-by-externality
  property (cf. Charter constraint #1).

#### A2. Self-knowledge before acting
**The dyad declares its identity (name, agent-half role-name, tended target) before engaging.**
- **Methodology (Dyad-Healer):** we operated against live patients (cases 1 + 2) *before*
  declaring our identity (`README.md` committed `a309594`, 2026-05-27). The retrospective
  audit marked this `[POST-HOC]`. The methodology that eventually surfaced identity was a
  combination of accumulated naming-in-practice (the role-name "Healer" was in active use
  before declared) and form-grounding (citing `the-dyad-practice` forced us to articulate
  what we were).
- **Falsifiability:** a dyad whose identity is implicit drifts; its agent-half adopts shifting
  roles; its Operator can't crisply name what's being instantiated.

#### A3. Form-grounding
**The dyad is grounded in its parent form, and names what it inherits faithfully vs. evolves
locally.**
- **Methodology (Dyad-Healer):** parent-form (`the-dyad-practice`) was authored in parallel
  with our operation. Form-grounding only surfaced as load-bearing during the 2026-05-28
  reflection (the *form-grounding-resolves-dialectic* pattern); most decisively, the form's
  *"forcing a fit is the one move wu-wei forbids"* gave us the Dao retirement's wu-wei
  argument.
- **Falsifiability:** a dyad un-grounded in its parent form will re-invent (or contradict)
  decisions the form has already made; dialectic loops fail to converge because there's no
  appeal-to-upstream.

### Family B — Discipline at t=0

#### B1. Ontology naming with single-home-per-fact
**Each distinct kind of artifact the dyad produces gets named as an ontology with its own
single-home discipline. (Directories are *physical*; ontologies are *load-bearing*.)**
- **Methodology (Dyad-Healer):** three ontologies (`wards/`, `ledger/`, `kb/`) emerged
  organically from need; the fourth (`recommendations/`) was ratified on 2026-05-27 only
  after the prescription channel had developed. The single-home-per-fact discipline was
  declared late (`kb/glossary.md` v0.1 ratified 2026-05-28). Mere directory creation was
  *never* load-bearing; the load-bearing decision was always the ontology declaration —
  what KIND of artifact, with what discipline.
- **Falsifiability:** a dyad without named ontologies produces artifacts that drift across
  homes; cross-contamination is the failure mode (the spine-in-ward contamination case-2
  caught is the lived example).

#### B2. Channel discipline via Operator-hat naming
**Each Operator role the human will wear is named, even if there is only one channel at t=0.**
- **Methodology (Dyad-Healer):** "Healer Operator" vs "Frontier Operator" naming was
  codified mid-stream after a case-02 channel-conflation incident exposed the gap (ledger:
  *"from Operator's conflation-confusion catch"*). The naming itself prevents conflation
  when a second channel later emerges; we discovered this by near-miss.
- **Falsifiability:** a dyad with un-named Operator hats will produce mis-routed
  recommendations (we did, into the patient's kb/ instead of the Healer's, retro-corrected
  as #1171).

#### B3. Loadable ground (the operating-anchor)
**The agent loads a NON-NEGOTIABLE-bearing anchor first, every session.**
- **Methodology (Dyad-Healer):** `CLAUDE.md` was committed (`577d6e7`, 2026-05-27)
  *because* verify-before-asserting had already failed under long context in a prior
  session (asserted `/goal` absent without grounding; stale-SHA assertions). The
  loadable-first discipline was driven by failure, not pre-declared.
- **Falsifiability:** a dyad whose agent doesn't reload its NON-NEGOTIABLE at session start
  drifts under long-context; verify-before-asserting fails first.

#### B4. Vocabulary canonicalization
**Cross-cutting terms get canonicalized as they appear, not after they drift.**
- **Methodology (Dyad-Healer):** `kb/glossary.md` v0.1 was ratified 2026-05-28 — the
  latest-arriving foundational discipline. It came after multiple terminology drifts (most
  acutely the *Dao* retirement). The methodology that surfaced it: per-term audit, applied
  reactively to lived drift.
- **Falsifiability:** a dyad without a glossary discipline produces semantic drift; tokens
  silently change meaning; future-self can't ground past-self's writing.

### Family C — Codified canon (ratified once lived)

#### C1. Telos
**The dyad has a falsifiable North Star — a Telos whose measure is baked into its statement.**
- **Methodology (Dyad-Healer):** `kb/telos.md` ratified 2026-05-27 via dialectic that sharpened
  three breaks (domain-coupling, "structurally impossible," efficiency-hedge). Final wording
  baked the falsifiable metric *into* the Telos statement itself (*"…until resuscitation is
  rarely needed"*) — the Telos is directly testable, not reliant on commentary.
- **Falsifiability:** a Telos whose measure isn't baked in becomes unfalsifiable; the dyad
  cannot know whether it is succeeding.

#### C2. Charter + Governance
**The dyad ratifies its ontology (what it IS) and its governance (how it's ratified).**
- **Methodology (Dyad-Healer):** `kb/charter.md` + `kb/governance-map.md` ratified 2026-05-27
  via three-pass falsification. The structure-of-codification falsification produced the
  load-bearing finding: ontology + governance-operations belong in **two cross-referenced
  docs**, not one (single-concern-per-doc grain). Six constraints emerged: 3 universal, 2
  rescue-only, 1 patient-touching-only.
- **Falsifiability:** a dyad without a ratified Charter has implicit identity that drifts; a
  dyad without a Governance Map has implicit ratification that becomes opaque.

#### C3. Ratification chain
**The chain — who proposes / who ratifies / what gate substrate — is named explicitly. The
ratifier is identified.**
- **Methodology (Dyad-Healer):** chain ratified 2026-05-27 (ledger Decisions): Healer
  proposes → Operator ratifies; Frontier authors patient's kb/ → Operator merges. Named
  explicitly only when ambiguity around case-1's PR #1171 mis-homed Healer-domain content
  into the patient's kb/ — failure surfaced the need.
- **Falsifiability:** a dyad without a named ratification chain produces contested
  attribution (who can change what?) and mis-homed artifacts.

### Family D — Operating form

#### D1. Execution form
**The dyad adopts (or names locally) an execution loop, with explicit relation to the parent
form's recommendations.**
- **Methodology (Dyad-Healer):** SPAOR adopted as the Building/Authoring execution loop
  (ratified 2026-05-27) via a 3-turn dialectic: thesis ("SPAOR aligned with form") → break
  → rebuttal ("Dyad Practice is silent on execution topology") → reframe (complementary
  axes, not aligned/competing) → option B chosen over option A on phase-gating grounds.
  The form-not-wiring constraint (no Nodes/Meta-Graph dependency) preserves externality.
- **Falsifiability:** a dyad without a named execution form runs each session ad-hoc;
  cadence-discipline doesn't bind under long-context pressure.

#### D2. Posture taxonomy (conditional)
**If the dyad operates in distinct modes, the postures are named. If monolithic, declared so.**
- **Methodology (Dyad-Healer):** three postures (Exception · Building · Authoring-Research)
  ratified 2026-05-27 in `kb/modes-of-operation.md`. Emerged from observed operating modes;
  not all dyads need this — a single-mode dyad would declare monolithic posture.
- **Falsifiability:** a dyad with un-named multiple modes silently switches operating
  disciplines without declaring the switch; reviewer can't audit which discipline applied.

#### D3. Reflection mechanism
**The practice works on itself at named rest points (S9-equivalent cadence).**
- **Methodology (Dyad-Healer):** `kb/practice-reflection.md` ratified 2026-05-28. CSS
  (Continue/Start/Stop) at natural stops + explicit stops. Two-substrate-paired (Operator
  narrative + Healer details). Two trigger types codified after [ALIGN] dialectic.
- **Falsifiability:** a dyad without a reflection mechanism cannot codify what it learns;
  the *the practice working on itself* tenet collapses to mere doing.

---

## Cross-cutting methodology Dyad-Healer used to surface invariants

These are not invariants themselves; they are the **methodologies** that surfaced the invariants
above. Cited because future dyads may need them to surface their own:

- **Falsification of every assertion** (the form's spine mechanism) — produced the Charter's 6
  constraints, the SPAOR adoption, the Telos sharpening, the Dao retirement.
- **Form-grounding to resolve dialectic** — cite the parent form when local dialectic loops;
  often dispositive.
- **Retrospective audit modeled on `HOW-0002`** — the falsifiable evidence layer; the
  `[POST-HOC]` mark category emerged from this methodology and contributes back to the
  audit template lineage.
- **Per-term audit beats global reinforce-or-friction** — when terminology questions arise,
  audit each term independently rather than imposing binary policy.
- **PROPOSED → ratify → flip cadence** for kb/ docs (reversibility-preserving, with the
  caveat that ratification surface must be small per the load-bearing-decision-detection
  discipline).

---

## Falsifiability of DIP itself

DIP is falsifiable in three ways:

1. **Each invariant** carries its own falsifiability test (above).
2. **Coverage:** if a future dyad's retrospective audit (modeled on `0001-dyad-healer-...`)
   surfaces a `[POST-HOC]` mark on a structure that DIP did not name as an invariant, DIP
   under-covers — propose the missing invariant.
3. **Methodology validity:** if a future dyad satisfies a DIP invariant using
   *different methodology* than ours and it works, that's confirmation our methodology was
   *one* path, not *the* path. (If their methodology doesn't work, the invariant or the
   methodology family may need revision.)

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
