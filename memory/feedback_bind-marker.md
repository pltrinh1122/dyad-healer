---
name: feedback_bind-marker
description: "Operator marker `bind:` = anchor a rule/invariant to a deterministic tool, not fallible memory (cairn def)"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 2f7de497-1800-4f06-af72-9308d90c7acf
---

`bind: <rule/invariant>` is an Operator interaction-marker (introduced 2026-06-07), **defined by
dyad-cairn**: *anchor the rule to a physical, deterministic tool (a script/test/guard + playbook) rather
than relying on fallible generative memory.* Cairn's words: "rules are bound to physical, deterministic
tools (The How) and playbooks (The When)"; hard-guardrails step 4 "anchor the invariant… bound to that
script"; a true binding is an **Ontological Bond**. Refer to cairn's remote repo
(`git@github.com:pltrinh1122/dyad-cairn.git` — `DYAD_LEDGER.md`, `dyad-state/drafts/hard-guardrails.md`,
`bin/bind`) at time-of-use; don't infer.

**How to apply:** when told `bind: X`, don't just record X as prose — tie X to a *deterministic mechanism*
that enforces/detects it (the [[feedback_grounding-gate-not-ingrain]] + prescriptions-as-guards move). State
the deterministic spec; if the tool isn't built yet, say so honestly — a bind to an unbuilt tool is still
memory-enforced, so name the target + forbid the soft primitive in the interim, and rack the validated build
(with its own self-test). First use: bound the seizure invariant → a contraction detector
(`kb/seizure-taxonomy.md`). Related Operator markers: `clip` (finalize/record), `rack` (queue to backlog),
`rub:` (falsify), `fb:` (feedback), `retro:` (CSS retrospective), `lean` (execute my stated recommendation).
