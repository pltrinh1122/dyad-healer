---
name: feedback-installer-hygiene-as-sense-pass
description: "Bootstrap protocols need environmental viability check + conflict detection as the agent's first Grounding move — the form's Validate mechanism applied at move one. Surface findings, don't auto-act. Validated 2026-05-28 AGENT.md [IDEATE]."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 859c537e-4055-4b6d-be0d-9600797c810b
---

When designing a bootstrap protocol or an instantiation flow, include a
**Sense pass** as the agent's first move — before any candidate generation:

- **Substrate viability** — agent runtime, durable record (git), upstream tools
  (gh, etc.).
- **Existing-state detection** — conflicting files (e.g., existing CLAUDE.md /
  GEMINI.md at cwd or substrate-config dirs), in-flight state.
- **Surface findings; don't auto-act.** Present conflict-resolution options to
  the dyad (proceed / quarantine / integrate / abort); dyad ratifies; agent
  acts on the ratified choice.

**This IS the form's Grounding mechanism applied at the first opportunity.** The
bootstrap embodies the Practice from move one.

**Why:** without environmental viability checks, the bootstrap may fail at the
first artifact write (no git; no permissions; etc.). Without conflict
detection, the bootstrap may overwrite valuable state. Without surface-not-
act, the agent violates channel discipline (Operator hat governs workspace
state). All three are standard installer-hygiene concerns that map cleanly to
the form's Grounding mechanism.

**How to apply:**
- Bootstrap-shape work: include a Sense pass as a discrete step before any
  proposal/candidate work.
- Frame it as **the agent's first Grounding move** (form-canonical Validate
  mechanism applied), not as a procedural checklist.
- Surface findings + propose options (Proceed-as-is / Quarantine / Integrate
  / Abort patterns); dyad ratifies.
- Don't sweep for craft-specific tools at Sense — craft is discovered later;
  craft-specific Sense is just-in-time.

**Validated:** 2026-05-28 AGENT.md drafting. Operator [IDEATE]: *"This was
something we'd taken for granted during instantiation of Dyad Healer - we
didn't assess the minimum environmental requirements (claude/agy, python, git,
gh-issue). Should AGENT.md mandate a landscape sweep as part of the Sense
phase of this whole process?"* + *"existing GEMINI.md/CLAUDE.md ... would
potentially conflict so we may want to warn and quarantine those files with
messages to the user of the quarantine. This is standard 'installer' protocol
hygiene."* Added Sense section to AGENT.md per Section 3.

Related:
- [[feedback-no-frontier-hat-asks]] — surface-not-act is channel discipline at
  the workspace-governance scale.
- [[feedback-friction-establishes-grain]] — conflict resolution via dyadic
  friction (options for the dyad to ratify, not auto-action).
