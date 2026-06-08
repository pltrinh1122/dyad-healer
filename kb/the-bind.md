# The Bind — tie an invariant to a mechanism, never to memory

> Ratified Dao. The **why** plane of `bin/bind` (this file is itself bound by that tool — the
> first Ontological Bond). Ground vocabulary in `kb/glossary.md`.

## What a bind is
A **bind** ties a rule/invariant to a **deterministic mechanism** that enforces it — so the rule
survives context-amnesia. A bind is *not* a sentence promising to remember; that is the very
failure mode a bind exists to replace.

## Why this exists (the wound)
On 2026-06-07 we used `bind` as a **word over markdown** — prose asserting "this is bound." That is
memory-enforcement wearing the costume of a mechanism: it degrades the instant context is lost, and
it was caught only by an Operator rub ("prove the bind physically exists"). Soft, prose-level
"binds" are indistinguishable from un-bound intentions. The cure is to make a prose-bind
**structurally impossible**: refuse to forge a bind that isn't backed by a working mechanism.

## The three planes (a bind exists only when all three are real, at forge-time)
- **Theory** — a file under `kb/`: the generative intent, permanently codified (this document is one).
- **Mechanics** — a file under `bin/` (or `tests/`): the executable that enforces the intent.
  Intent without a mechanism is just prose.
- **Self-test** — a command that **exits 0**: proof the mechanism *works now*, not merely that a
  mechanism file exists. (This is the plane cairn's `ontological_binder` omits and we add.)

`bin/bind` refuses the bind — loudly, non-zero — unless all three are present and the self-test
passes, then commits them **atomically** as `bind: <message>`. The enforcer is itself
**self-test-gated** (it refuses to run unless `bin/bind --self-test` passes): the rigor-tool is held
to its own rigor.

## The general program
This is the first instance, not a one-off: **every Healer diagnostic claim should aim to be bound
to an executable check, not asserted.** Lineage — the seizure invariant bound to
`bin/contraction-check.sh` (`kb/seizure-taxonomy.md`) was the proof-of-concept; `bin/bind`
generalizes the move into an enforced discipline.

## Falsifiable
The bind discipline is earned, not dogma. It is wrong if it becomes ceremony that obstructs more
than it protects — e.g. if mechanisms get stubbed with empty self-tests to satisfy the gate (the
gate would then bind nothing). Watch for that; the gate guards against accidental prose-binds, not
adversarial gaming. Revisit if the cost outruns the protection.
