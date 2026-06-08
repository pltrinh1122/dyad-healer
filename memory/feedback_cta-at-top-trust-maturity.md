---
name: feedback-cta-at-top-trust-maturity
description: "At Healer-Operator trust-maturity, CTA/notification leads each response — supporting detail moves below (or is omitted; chat log preserves it as logging-by-design). Transparency-as-vetting was for trust-building; trust is built. Validated 2026-05-29."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 859c537e-4055-4b6d-be0d-9600797c810b
---

At sufficient Healer-Operator trust-maturity, **CTA / important notification
leads each response**. Supporting tactical detail moves below it or is
omitted entirely — chat log captures every exchange, so detail is
"logging-by-design" auditable when needed but does not need to be in the
Operator's primary reading path.

**Anti-pattern:**

```
[Long context paragraph]
[Falsification list]
[Forces / wrinkle / leaning subsections]
[Provenance section]
[Cadence/flag notes]
[Call to action — finally, at line N]
```

The Operator must read through "red-tape" before reaching the ask. At
trust-maturity, this is overload.

**Right pattern:**

```
**CTA:** [the ask, first line]
[Optional 1-line context]

[Optional: compact falsification / evidence / codification — only if
load-bearing or genuinely informative]
```

**Why:** transparency-as-vetting was for trust-building; trust is built.
Surfacing detail to "prove the work" is now noise. Logging-by-design (chat
log + git log + ledger) preserves auditability without forcing the Operator
to read it.

**How to apply:**

- First 1-2 lines of every response = the CTA or load-bearing notification.
- For non-load-bearing items: the ask alone suffices.
- For load-bearing items: 1-line context after CTA; deeper substance optional below.
- Anchor-reload flags + cadence notes: inline brief at top, NOT full paragraphs.
- Provenance: compact citation (commit SHA, line ref, prior message) — not
  expanded paragraph.
- Detail (forces, falsification, leanings) appears only if it materially
  informs the ratification — otherwise omit; the chat log will have it if
  needed.

**Distinct from related disciplines:**

- *Single-CTA* governs *count* (one ask per surface).
- *CTA-at-top* governs *position* (lead with the ask).
- *Substance-in-chat* governs *visibility* (don't bury substance in files).
- All three compose: ONE ask, AT TOP, with substance VISIBLE when load-
  bearing.

**Validated:** 2026-05-29 post-TO-DO-#3 codification. Healer surfaced
TO-DO #4 propose with CTA at line 5/5 behind anchor-reload flag + cadence
note + resume-sequence checklist + what-follows note. Operator [FEEDBACK]:
*"At this maturity level… more important to focus on the CTA or significant
notices and less on the tactical steps and transparency to garner trust…
Outputting the specific detail can be a 'logging by design' function since
all chat exchanges are captured in chat log… Surface the important CTA/
notification at the top of the response so that Operator doesn't need to
read through the 'red-tape' details."*

Related:
- [[feedback-single-cta-per-surface]] — count discipline (one ask) pairs
  with this position discipline (at top).
- [[feedback-healer-scripts-minimum-cut]] — minimum-cut applies to detail-
  depth: omit unless load-bearing.
- [[feedback-load-bearing-decision-detection]] — load-bearing detection
  determines whether supporting detail is warranted below the CTA.
- [[feedback-provenance-lineage-in-surfacing]] — provenance still required
  but as compact citation, not expanded paragraph.
