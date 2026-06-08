# memory/ — the agent-memory system of record (engine-agnostic, durable)

> **Use:** the durable, portable home for the Dyad-Healer's distilled agent-memory —
> operator-feedback, project state, references. `MEMORY.md` is the index. Read on launch under
> **any** engine. **Status: HEALER PRACTICE** — established 2026-06-08 (ledger). Living; falsifiable.

## Cache vs system of record

The Dyad-Healer can launch on different agentic engines (`claude`, `agy`, …) over the **same**
substrate (this repo). The agentic engine is swappable; the dyad-memory must not be.

- **System of record — `memory/` (here).** Canonical, engine-agnostic, version-controlled.
  *All* dyad-memory lives here durably.
- **Runtime cache — engine-native memory** (e.g. claude's `~/.claude/.../memory/`, loaded into
  context each claude session). A *projection* of this record for **recall efficiency within that
  engine's runtime**. Disposable: lost on engine-swap, by design.

## The no-orphan invariant

**No dyad-fact may live *only* in a runtime cache.** Every engine-native memory must have its
canonical home here. A fact that exists only in the claude cache dies when the Healer relaunches on
`agy` — a continuity break (continuity lives in the durable record, not the runtime).

Derives from **single-home-per-fact** (`README.md`) + **engine-divergence** (`kb/governance-map.md`
§"Constraint #1's two axes"): because the engine is swappable, off-substrate memory is not durable.

## Coherence (write-back)

Canonical writes land here. The engine-native cache is hydrated from here at session start and
written back here when a memory is added/updated. *(Sync-automation is the owed mechanism —
recurring manual mirror is the interim; see ledger 2026-06-08. Recurring friction → automate.)*

## Single-home note (redundancy is a later pruning, not a blocker)

This layer = distilled agent-recall (feedback / project / reference). Sibling homes on the substrate:
`kb/` ratified practice · `ledger/` decisions · `wards/` clinical · `recommendations/` prescriptions ·
`CLAUDE.md` / `GEMINI.md` per-engine anchors. Some entries here summarize facts also stated in
`kb/`/`CLAUDE.md` (anchor-vs-detail, permitted). True duplication is a wu-wei pruning pass, owed but
non-urgent — the mirror prioritizes *no orphan lost on relaunch* over tidy single-home first.
