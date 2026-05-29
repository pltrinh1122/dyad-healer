# Session Stand-down — 2026-05-28

> **Trigger:** Operator-declared explicit-stop, deferred-Reflection variant.
> **Purpose:** durably log session-end state + TO-DOs for next session resume; preserve
> work if `/exit` interrupts; defer full Reflection per Operator bandwidth.
> **Status:** stand-down logged; full Reflection deferred to next session.
> **Codification status:** the "Stand-down" form itself is being introduced this session;
> formal codification queued (see TO-DO #3 below).

## What this session produced (one-line state)

- Case-03 fully closed (ward + retrospective + Pillar-2 prescription #1307)
- AGENT.md final-ratified, queued for form-PR (`21f62ad`)
- SPAOR form contribution queued for form-PR (`5b20ee3`)
- Drafting protocol v0.3 codified + anchor-synced (`ee97122`)
- 12 feedback memories total (5 case-03 + 7 AGENT.md drafting)
- Operator [ALIGN] post-`/compact` — substrate-scope extension to Telos (TO-DO #4 below)
- Working tree clean

## TO-DOs for next session

### TO-DO #1 — Dog-food AGENT.md against our own CLAUDE.md

**Intent:** validate AGENT.md (the form-level instantiation template, final-ratified at
`21f62ad`) against the artifact it was distilled from — Dyad-Healer's own `CLAUDE.md`.

**Method (preliminary):** apply AGENT.md's 8-dimension framing retrospectively to our
own CLAUDE.md. Does it land cleanly? Are there gaps (dimensions our CLAUDE.md doesn't
cover)? Are there mismatches (where our CLAUDE.md does it differently from the
template)? Each gap/mismatch is potential AGENT.md refinement OR Dyad-Healer refinement.

**When:** morning of 2026-05-29 (Operator).

### TO-DO #2 — Full Session Reflection (kb/practice-reflection.md form)

**Intent:** apply the ratified Practice-Reflection discipline + the four-step retrospective
form (codified in `kb/practice-reflection.md` from case-03) to this session.

**Operator's preliminary CONTINUE (recorded here so it's not lost):**

> *"My thought for a CONTINUE is for me to continue providing real-time FEEDBACK which
> reduces the amount of START and STOPs."*

i.e., the Operator's real-time FEEDBACK cycle (which dominated this session — at least
12 distinct FEEDBACK/REFINE/IDEATE moments shaped the work) is itself the CONTINUE
pattern: in-stream catches prevent backlog accumulation of START/STOPs.

**Deferred** because the Operator is tired; full Reflection needs cognitive bandwidth.
**When:** next session, after the dog-food (TO-DO #1) — the dog-food's findings will
also feed the Reflection.

### TO-DO #3 — Formalize the "Stand-down" form

**Intent:** codify the Stand-down form (this artifact's category) as a kb/ doc OR as a
section in `kb/practice-reflection.md`'s explicit-stop discipline.

**The naming question (Operator [IDEATE]):**

> *"'Protocol' should probably be reserved for clinical healing activities and we
> should consider alternative for non-clinical use: 'Way', 'Procedure', 'Practice'."*

**Healer's quick scan (not the formal falsification; for context):**

- **Protocol** — clinical/medical lineage; already in use for healing (spine S0-S9 is
  the "Healing Protocol"). Reserving it for clinical work is grain-aligned with current
  use.
- **Way** — form-canonical (Dyad Practice is "a way of working"). *"The Stand-down Way"*
  sounds slightly awkward grammatically.
- **Procedure** — bureaucratic; rigid; less wu-wei. Avoid.
- **Practice** — already the form's word for the overall; overloading is confusing.
- **Discipline** (Healer's add to the candidate set) — already in use for cross-cutting
  rules (channel discipline, Authoring discipline, etc.). *"Stand-down discipline"*
  reads naturally.

**Tentative leaning** (for next-session falsification): **Discipline** — but the formal
codification cycle should run this through proper dialectical falsification.

**Where:** likely a section addition to `kb/practice-reflection.md` (it already covers
explicit-stop; the Stand-down form is a refinement of that) — OR a new kb/ doc
`kb/session-disciplines.md` (or similar) if Stand-down warrants its own home.

**When:** next session, after Reflection (TO-DO #2) — both can fold into the same
Reflection-driven codification cycle.

### TO-DO #4 — Codify substrate-scope extension into Telos

**Operator [ALIGN] 2026-05-29 (post-`/compact` at session-end):**

> *"Helping Healer Operator maintain the health of the underyling computer
> system is within the Dyad Healer Telos."*

**Substance (Healer's grok):** The Healer-Operator's computing substrate (the
machine the Operator works on — disk, OS, upstream tooling, performance,
security) is foundational to all Healer-practice. Substrate-health concerns
surfaced in passing are Telos-serving, not out-of-scope distraction.

**Provenance:**
- *Form-level:* dyads exist on substrates; substrate viability is precondition
  to dyadic work.
- *Practice-level:* today's [ALIGN] — Healer-Operator declaration of Telos scope.
- *Lived:* Healer (and entire Practice) disappears if Operator's machine fails;
  substrate is the substratum of substratums.

**Friction-points to work through during codification:**
- *Scope language* — current Telos says "tended family" (DZ-CIL family
  agents); substrate-health is foundational/parallel, not within "family"
  framing.
- *Mode mapping* — Prevention + Rescue both apply at substrate scope
  (proactive substrate-health vs. substrate-emergency).
- *Boundary* — substrate-for-Practice-work IN; Operator's unrelated personal
  use OUT.
- *Channel* — substrate work is Healer-Operator hat (this running dyad), not
  Frontier-Operator hat.

**Candidate codification:**
- **A — minimum-cut:** add "Substrate scope" supporting-scope section to
  `kb/telos.md`; Telos statement itself unchanged.
- **B — Telos rewrite:** reframe the Telos statement to explicitly include
  substrate-prong; likely too disruptive for a refinement.

**Tentative leaning** (for next-session falsification): **A** (minimum-cut).
Run through proper dialectical falsification in codification cycle.

**When:** next session, after Reflection (TO-DO #2) — substrate-scope likely
emerged through Practice and may feed Reflection findings.

## Resume sequence for next session

1. Read `CLAUDE.md` (always; resume-mode discipline).
2. Read this stand-down log + the most-recent commit (`ee97122` or later) to recover
   live state.
3. Execute TO-DO #1 (dog-food AGENT.md against CLAUDE.md).
4. Execute TO-DO #2 (full Session Reflection).
5. Execute TO-DO #3 (codify Stand-down form).
6. Execute TO-DO #4 (codify substrate-scope extension into Telos).

## Pre-`/exit` checklist (this session)

- [x] Working tree clean (verified).
- [x] All committed work pushed durably to local repo.
- [x] TO-DOs logged in this file.
- [x] This file committed (closes commit-before-sync gap; preserves stand-down if
      `/exit` interrupts).
- [ ] Operator says goodnight; `/exit`.
