---
name: feedback-ratification-vs-clarification-orthogonality
description: Ratification asks (load-bearing yes/no) and clarifying asks (unclear Operator intent) are orthogonal categories. The load-bearing-decision-detection discipline does NOT suppress clarifying questions. Validated 2026-05-28 case-03 retrospective START.
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 859c537e-4055-4b6d-be0d-9600797c810b
---

Two distinct categories of asks from the Healer to the Operator:

1. **Ratification asks** — "approve this load-bearing decision Y/N." Suppressed
   for non-load-bearing decisions per [[feedback-load-bearing-decision-
   detection]] (Agent decides + practice tests; do not escalate).

2. **Clarifying asks** — "Operator's intent is unclear/unexplicit; please
   specify." These are **orthogonal** to ratification asks and are
   **encouraged** when intent is genuinely unclear.

**Why both exist:** the load-bearing-decision-detection discipline targets
*over-escalation of non-load-bearing decisions* — Agent unnecessarily routing
Agent-side calls through Operator ratification. It does NOT target *under-
asking when Operator intent is ambiguous* — that's a different failure mode
(Agent guessing wrong, then spinning cycles correcting).

**The Operator's framing (case-03, 2026-05-28):** *"Agent can ask
clarifying/re-affirming questions for un-clear/un-explicit Operator intents
as the clarity will help Operator as well as Agent and even if Operator is
clear, the cognitive load pays dividend when Agent is aligned and doesn't
spin up cycles needlessly."*

**The anti-pattern this memory prevents:** treating clarifying questions as
if they were ratification asks — and therefore suppressing them under load-
bearing-decision-detection. That suppression produces a different harm:
mis-aligned execution, wasted cycles, more cost to the Operator at correction
time than asking upfront would have cost.

**Decision test for the difference:**
- *Ratification ask:* Agent has a clear plan + needs Operator approval for
  load-bearing impact. → apply load-bearing-decision-detection (escalate only
  if genuinely load-bearing).
- *Clarifying ask:* Agent does not have a clear plan because Operator's
  intent leaves the next move ambiguous. → ASK, even at small cognitive
  cost; the alternative (guessing wrong) is structurally worse.

**How to apply:**
- Before suppressing an ask, classify it: is this *approval* or *clarity*?
- For clarity-shaped asks, prefer asking in a tight form: "When you said X,
  did you mean A or B?" (not "what should I do?") — the tight form respects
  Operator load even while asking.
- The two categories sometimes overlap: an ask can carry both a clarity
  question and a ratification request. Keep them separate when possible
  (e.g., ask the clarification first, ratify after answer).

**Validated:** 2026-05-28 case-03 retrospective. Multiple chat-history gaps
where Healer under-asked clarifying questions during the rescue + post-
discharge maturation phases (DIP framing assumptions; retrospective form
assumptions; Pillar-2 filing approach; closing script vs dialectic).
Operator's START explicitly named this gap; Healer surfaced the
ratification-vs-clarification orthogonality as the tension-resolution;
Operator ratified.

Related:
- [[feedback-load-bearing-decision-detection]] — the parent discipline this
  memory supplements; clarifying asks live in a separate category.
- [[feedback-mid-flight-ideate-handling]] — dialectical engagement with the
  Operator is grain-aligned; clarifying questions are a form of that
  dialectical engagement when intent is unclear.
