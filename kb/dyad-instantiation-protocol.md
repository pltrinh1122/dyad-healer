# Dyad Instantiation Protocol (DIP) — v0.1 PROPOSED

> **Audience:** the Dyad-Healer (first applicant — retrospectively) + future dyads instantiated
> under the Dyad-Practice form · **Use:** name the minimum structure a dyad must have in place
> at each stage of its instantiation. **Not a procedural runbook** (no install commands, no
> sequence of shell invocations); a **stages-and-completion-criteria** declaration.

## Lineage (informed by, not iterating)

DIP is a **sibling protocol** to the agent-antigravity bootstrap lineage — informed by it,
not iterating it. The lineage targets *Dao-Engine* instantiation; DIP targets *dyad*
instantiation. The category seam is real (see `ledger/audits/0001-dyad-healer-instantiation-
retrospective.md`).

Informed by:
- **The Shaping** (`WHAT-0000`/`WHY-0000`-the-shaping-ontology) — Aristotelian-causes
  ontology; loaned: **chronological-cascade-with-blocking-invariants**.
- **Bootstrap Audit Template** (`HOW-0002`) + applied instance
  (`0001-bootstrap-v2-compliance`) — loaned: **stage-completion gating** + retrospective
  audit form.
- **ISBO** (`HOW-0935` / `WHAT-0935` / `WHY-0935` / `WHY-1121`) — loaned: **role-conflation
  failure-mode framing** (in dyads: Founding Operator vs Instance Operator + channel
  discipline).
- **The Dyad Practice form** (`github.com/pltrinh1122/the-dyad-practice`) — the **parent
  form**; DIP exists to instantiate that form's *cells* (dyads).

## Position

DIP is *what*-shaped (declarative ontology), not *how*-shaped (procedural runbook). It names
**what must be in place** before each transition between stages. The dyad + Operator find the
path; DIP gates the transitions.

## Stages

Three stages emerge chronologically. **A stage cannot complete until its blocking invariants
are satisfied.** This is the Shaping's wu-wei discipline preserved.

### Stage 1: Declare (the t=0 ontology)
The minimum set declared *before* the dyad engages its tended target. Failures observed in
retrospective audit (`ledger/audits/0001`) all map to items skipped here.

**Required at Stage-1 completion:**

1. **Identity declaration** — a single doc (typically `README.md`) naming:
   - the dyad's name (e.g., "Dyad-Healer"),
   - the agent-half's role-name (e.g., "Healer"),
   - the dyad's **tended target** (whom it serves).
2. **Parent-form citation** — explicit link to `the-dyad-practice` + a statement of what the
   dyad **inherits faithfully** vs. **evolves locally**.
3. **Ontology declarations** — each distinct *kind* of artifact the dyad will produce, with
   its single-home discipline. Directories are the *physical* instantiation; what's
   load-bearing is the **ontology** (e.g., "clinical evidence ≠ ratified canon ≠ dev
   dialectic"). Minimum starter set is small; new ontologies require explicit ratification.
4. **External-to-tended-target boundary** — declared in the identity doc; physical
   instantiation off the tended target's tree.
5. **Operating-anchor stub** — a `CLAUDE.md`-equivalent that the agent loads first every
   session. Even 20 lines is enough; must include the dyad's NON-NEGOTIABLE discipline
   (whatever that is for this dyad).
6. **Operator-hat naming with channel discipline** — name each Operator role the human will
   wear, even if there is only one at t=0. The naming itself prevents conflation when a
   second channel later emerges.
7. **Glossary v0.1 stub** — minimum 3 cross-cutting terms canonicalized. The *commitment* to
   canonicalize vocabulary matters more than initial coverage.

**Stage-1 completion test:** can a stranger reading the identity declaration + operating-
anchor + glossary stub answer "what is this dyad, what does it tend, what kinds of artifacts
will it produce, what is its NON-NEGOTIABLE?" If yes, Stage 1 is complete.

### Stage 2: Practice (engage the role)
The dyad begins doing its role-defined work against its tended target. **Stage 2 has no fixed
duration** — it runs until enough cycles have accumulated for Stage-3 ratification to be
grounded rather than speculative.

**Required during Stage 2:**

- The dyad runs its actual role (heal patients, build features, distill cross-instance
  contributions — whatever the role-name from Stage 1 declared).
- Each cycle is captured in the appropriate ontology bucket per the discipline declared at
  Stage 1.
- Anticipate Stage-3 items will emerge — **do not pre-fill them**. Pre-filling Charter / Loop
  / Posture / Reflection-cadence before lived practice produces vacuous shape.

**Stage-2 completion test:** has the dyad accumulated enough evidence (≥ 1 substantial arc
in its role; rough heuristic, falsifiable) that Stage-3 codifications can cite lived dialectic
rather than imagined-future?

### Stage 3: Ratify (lived structure → ratified canon)
What practice surfaced becomes ratified `kb/` canon. Each item is load-bearing (it binds
future practice); each requires Operator ratification with a tight ratification surface
(1–3 yes/no asks per ratification cycle, per the load-bearing-decision-detection discipline).

**Required at Stage-3 completion:**

1. **Charter + Governance-Map** (or single-doc equivalent if the dyad is simple) — what the
   dyad *is* + how it's governed.
2. **Telos** — the dyad's own North Star, falsifiable.
3. **Execution-loop** — adopted from the parent form's recommended loop OR a local variant
   with declared rationale.
4. **Posture taxonomy** — if the dyad operates in distinct modes (rescue / building / etc.),
   name them; if monolithic, declare so.
5. **Reflection mechanism** — cadence + format + sharing posture (see `kb/practice-
   reflection.md` for the Dyad-Healer's variant).
6. **Ratification chain declared** — who proposes, who ratifies, what the gate substrate is
   (e.g., conversational confirm vs written PR vs HITL-checkbox).

**Stage-3 completion test:** can a successor dyad-instance read the dyad's `kb/` and pick up
operation without recourse to the Operator's tacit knowledge?

## Continuous: Reflect
Reflection begins the moment Stage 2 begins and runs alongside everything afterward.
Cross-ref `kb/practice-reflection.md` (Dyad-Healer's instance) for cadence + format. New
dyads SHOULD author their own reflection-mechanism doc in Stage 3, informed by the parent
form's *the practice working on itself* tenet.

## Retrospective audit
A new dyad SHOULD execute a retrospective bootstrap audit modeled on
`ledger/audits/0001-dyad-healer-instantiation-retrospective.md` once Stage 3 is complete.
The audit's `[POST-HOC]` count is the falsifiable measure of how much was winged despite
DIP being followed. Low POST-HOC = DIP held; high POST-HOC = DIP needs revision.

## Falsifiability

DIP is falsifiable in three ways:

1. **Stage-completion tests** above are claims about whether a stage's blocking invariants
   were satisfied. Each can be tested by trying to perform the next stage's work without
   the prior stage's outputs.
2. **The 7 Stage-1 items map 1:1 to the 7 "PASS-at-t=0" items in the retrospective audit.**
   If a future dyad instantiates under DIP and still produces multiple `[POST-HOC]` marks on
   Stage-1 items, DIP under-specified Stage 1 — revise.
3. **The 5 "anticipate-but-don't-pre-fill" items map to Stage-3 ratifications.** If a dyad
   under DIP completes Stage 3 but the canon reads vacuous / un-cited-from-practice, DIP
   over-allowed pre-filling — revise.

## Orthogonality criteria

Per the kb-doc quality standard surfaced 2026-05-28 (queued under Practice-governance-
discipline), DIP's self-extension SHOULD test orthogonality before adding stages or items:

- A new Stage-1 item is orthogonal to existing items iff there exists a dyad-instantiation
  where it is satisfied while another item is not (and vice versa).
- A new stage is orthogonal to existing stages iff its blocking invariants are not derivable
  from any prior stage's invariants.

## Cross-references

- Predecessor lineage (Dao-Engine-targeted, informs DIP but is not DIP's parent):
  `WHAT-0000-the-shaping-ontology` · `HOW-0002-bootstrap-audit-template` · `HOW-0935-isbo-
  protocol` · `WHAT-0935-isbo-architecture` · `WHY-0935-isbo-journey` · `WHY-1121-isbo-
  completeness` (all in the patient's `kb/` and in agent-antigravity's `kb/`).
- Parent form: `the-dyad-practice/README.md`.
- Dyad-Healer's lived instantiation evidence: `ledger/audits/0001-dyad-healer-
  instantiation-retrospective.md`.
- Cross-cutting disciplines DIP assumes: `kb/practice-reflection.md`; the load-bearing-
  decision-detection discipline (queued for codification under Practice-governance-
  discipline).
