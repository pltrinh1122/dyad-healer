#!/usr/bin/env python3
"""dag.py — dyad-healer's frontier/audit DAG engine (CSI; lineage-aligned SURVIVOR).

LINEAGE, falsified before porting (rub 2026-06-07, "implement survivor"):
  KEPT from touchstone: rack = a *dormant node-kind* (a flag), off the frontier until un-racked;
    the frontier is COMPUTED, never narrated from a stale cache.
  KEPT from cairn: the TODO holding pen — a pre-DAG quarry for raw divergent intent (capture
    without structuring; the release-valve for the over-add / framing-prematurity grain). `todo`
    captures; `convert-todo` masons it into a frontier node. (We drop cairn's dead rack_state.yml;
    rack is a node flag here, distinct from todo: rack=structured-and-parked, todo=unstructured.)
  KEPT from cairn: ONE engine over a parameterized store (DAG_FRONTIER / DAG_AUDIT env);
    EXCISE DONE so "a frontier only has edges" (retros/frontier_excision.md); the AUDIT-LOCK —
    any open node in the AUDIT store freezes the FRONTIER ("Alignment Precedes Execution").
  DROPPED (falsified against our substrate):
    - cairn's done-by-ledger-substring + ACTIVE-by-git-branch — brittle (prefix collisions) AND
      assumes branch-per-node; we commit to main. Here status is STRUCTURAL: BLOCKED/READY derive
      from deps (can't go stale), DONE is marked-then-EXCISED (never persists), RACKED is a flag.
      The ONLY stored thing is the edge (deps + flags); status is computed from structure.
    - WIP-N=1 — we run PARALLEL trails by design (ledger/trail-map.md).
    - cairn's rack_state.yml — a dead orphan stub (zero code refs); rack is a node flag here.
  KEPT from our own grain (bin/contraction-check.sh): SELF-TEST-GATED. Real ops refuse to run
    unless --self-test passes over known fixtures — trust the mechanism, not the memory.

Stores: ledger/frontier.yml (the climb) · ledger/audit.yml (alignment debt that preempts it).
Schema:  nodes: {<id>: {title, deps: [...], done?: bool, racked?: bool}}
"""
import os
import sys

import yaml

FRONTIER = os.environ.get("DAG_FRONTIER", "ledger/frontier.yml")
AUDIT = os.environ.get("DAG_AUDIT", "ledger/audit.yml")
TODOS = os.environ.get("DAG_TODOS", "ledger/todos.yml")

ICON = {"READY": "🟢", "BLOCKED": "🔴", "RACKED": "⚓", "DONE": "✓"}
ORDER = {"READY": 0, "BLOCKED": 1, "RACKED": 2, "DONE": 3}


def _load(path):
    if not os.path.exists(path):
        return {"nodes": {}}
    with open(path) as f:
        return yaml.safe_load(f) or {"nodes": {}}


def _save(path, state):
    with open(path, "w") as f:
        yaml.safe_dump(state, f, sort_keys=True, default_flow_style=False)


def derive(nodes, nid):
    """Structural status — the guarded core. No world-state guessing; pure DAG structure."""
    n = nodes[nid]
    if n.get("done"):
        return "DONE"
    if n.get("racked"):
        return "RACKED"  # dormant: carried freight, off the frontier until un-racked (touchstone)
    for d in n.get("deps", []):
        if d in nodes and derive(nodes, d) != "DONE":
            return "BLOCKED"
    return "READY"


def frontier(nodes):
    """The active edge: READY nodes only (deps satisfied, not racked, not done)."""
    return [nid for nid in nodes if derive(nodes, nid) == "READY"]


def build_tree(nodes):
    """Render the DAG as a directory-style ASCII tree: a dep nests its dependents beneath it
    (dep enables → children sit under it). Roots = nodes with no (in-set) deps. Returns lines."""
    children = {nid: [] for nid in nodes}
    roots = []
    for nid, n in nodes.items():
        deps = [d for d in n.get("deps", []) if d in nodes]
        if deps:
            for d in deps:
                children[d].append(nid)
        else:
            roots.append(nid)
    lines = []

    def walk(nid, prefix, is_last, seen):
        s = derive(nodes, nid)
        connector = "└─ " if is_last else "├─ "
        dup = "  ↩(also above)" if nid in seen else ""
        lines.append(f"{prefix}{connector}{ICON[s]} {s:8} {nid}  {nodes[nid].get('title', '')}{dup}")
        if nid in seen:
            return
        seen = seen | {nid}
        kids = sorted(children[nid], key=lambda k: (ORDER[derive(nodes, k)], k))
        ext = "   " if is_last else "│  "
        for i, k in enumerate(kids):
            walk(k, prefix + ext, i == len(kids) - 1, seen)

    ordered = sorted(roots, key=lambda r: (ORDER[derive(nodes, r)], r))
    for i, r in enumerate(ordered):
        walk(r, "", i == len(ordered) - 1, set())
    return lines


def excise(nodes):
    """Edge-only: physically drop DONE nodes + strip them from survivors' deps (cairn excision)."""
    done = [nid for nid in nodes if nodes[nid].get("done")]
    for nid in done:
        del nodes[nid]
    for n in nodes.values():
        if "deps" in n:
            n["deps"] = [d for d in n["deps"] if d not in done]
    return done


def open_nodes(nodes):
    """Non-DONE nodes — the alignment debt, for the audit store."""
    return [nid for nid in nodes if not nodes[nid].get("done")]


def add_todo(todos, tid, intent):
    """Quarry: capture a raw, unstructured intent into the pre-DAG holding pen (zero commitment).
    The release-valve for divergent generation — capture without structuring (the over-add cure)."""
    todos.setdefault("backlog", {})[tid] = {"intent": intent}
    return tid


def convert_todo(todos, nodes, tid, deps=None):
    """Mason: promote a quarried todo into a structured frontier node (dormant/racked until leaned),
    and remove it from the holding pen. Pure transform — CLI wraps it with file IO."""
    intent = todos["backlog"][tid]["intent"]
    nid = "node_" + tid
    nodes[nid] = {"title": intent, "deps": deps or [], "racked": True}
    del todos["backlog"][tid]
    return nid


def audit_lock(store):
    """Alignment Precedes Execution: open audit nodes freeze the FRONTIER. Bypassed when
    operating ON the audit store itself (else deadlock — cairn's dual-store rule)."""
    if os.path.abspath(store) == os.path.abspath(AUDIT):
        return
    debt = open_nodes(_load(AUDIT).get("nodes", {}))
    if debt:
        print("🚨 ALIGNMENT-DEBT LOCK — frontier frozen (Alignment Precedes Execution).")
        for nid in debt:
            print(f"   open audit node: {nid}")
        print(f"Clear {AUDIT} (all nodes done) before advancing the frontier.")
        sys.exit(1)


def selftest(verbose=True):
    fail = 0

    def ck(cond, msg):
        nonlocal fail
        if verbose:
            print(f"  {'ok  ' if cond else 'FAIL'} {msg}")
        if not cond:
            fail = 1

    nodes = {
        "a": {"deps": []},                  # root, nothing blocks
        "b": {"deps": ["a"]},               # blocked: a not done
        "c": {"deps": [], "done": True},    # done
        "d": {"deps": ["c"]},               # ready: only dep is done
        "e": {"deps": [], "racked": True},  # dormant
        "f": {"deps": ["e"]},               # blocked: racked dep is not done
    }
    ck(derive(nodes, "a") == "READY", "root, no deps -> READY")
    ck(derive(nodes, "b") == "BLOCKED", "dep-not-done -> BLOCKED")
    ck(derive(nodes, "c") == "DONE", "explicit done -> DONE")
    ck(derive(nodes, "d") == "READY", "all-deps-done -> READY")
    ck(derive(nodes, "e") == "RACKED", "racked flag -> RACKED (off-frontier)")
    ck(derive(nodes, "f") == "BLOCKED", "racked dep blocks dependent")
    ck(sorted(frontier(nodes)) == ["a", "d"], "frontier = READY edge {a,d} (racked/blocked/done excluded)")

    st = {k: dict(v) for k, v in nodes.items()}
    removed = excise(st)
    ck(removed == ["c"] and "c" not in st, "excise drops DONE c (a frontier only has edges)")
    ck(st["d"]["deps"] == [], "excise strips the done dep out of d")

    ck(open_nodes({"x": {"done": True}, "y": {}}) == ["y"], "audit debt = open (non-done) nodes only")

    tree = build_tree({"a": {"deps": []}, "b": {"deps": ["a"]}, "c": {"deps": ["b"]}})

    def _ind(line):
        return len(line) - len(line.lstrip())

    ck(len(tree) == 3, "tree: one line per node")
    ck(tree[0].rstrip().endswith("a") and tree[1].rstrip().endswith("b") and tree[2].rstrip().endswith("c"),
       "tree: dep-chain renders a -> b -> c")
    ck(_ind(tree[0]) < _ind(tree[1]) < _ind(tree[2]), "tree: each dependent nests deeper (DAG as directory tree)")

    todos = {}
    add_todo(todos, "todo_1", "a divergent thought, captured raw")
    ck(todos["backlog"]["todo_1"]["intent"].startswith("a divergent"), "todo capture -> holding pen (no structure)")
    nn = {}
    nid = convert_todo(todos, nn, "todo_1", deps=["a"])
    ck(nid == "node_todo_1" and nn[nid]["racked"] and nn[nid]["deps"] == ["a"], "convert-todo -> structured racked node")
    ck("todo_1" not in todos["backlog"], "convert-todo removes it from the holding pen (no double-home)")
    if verbose:
        print("SELFTEST: PASS" if not fail else "SELFTEST: FAIL")
    return 0 if not fail else 1


def _show(store):
    audit_lock(store)
    nodes = _load(store).get("nodes", {})
    label = "AUDIT" if os.path.abspath(store) == os.path.abspath(AUDIT) else "FRONTIER"
    print(f"{label}  ({store}) — computed DAG tree (deps nest dependents); DONE excised, never cached")
    for line in build_tree(nodes):
        print("  " + line)
    fr = frontier(nodes)
    edge = "frontier (climb now)" if label == "FRONTIER" else "open debt"
    print(f"\n  -> {edge}: {', '.join(sorted(fr)) or '(none)'}")


def main(argv):
    cmd = argv[0] if argv else "show"
    if cmd in ("--self-test", "selftest"):
        return selftest()
    if selftest(verbose=False) != 0:
        print("dag.py: refusing to run — self-test FAILED (arming gated on self-test).", file=sys.stderr)
        return selftest()  # re-run verbose to show which fixture broke
    store = AUDIT if (len(argv) > 1 and argv[1] == "--audit") else FRONTIER
    args = [a for a in argv[1:] if a != "--audit"]
    if cmd == "show":
        _show(store)
    elif cmd == "excise":
        st = _load(store)
        removed = excise(st.setdefault("nodes", {}))
        _save(store, st)
        print(f"excised (edge-only): {', '.join(removed) or '(none)'}")
    elif cmd == "todo" and args:
        import datetime
        todos = _load(TODOS)
        tid = "todo_%d" % int(datetime.datetime.now(datetime.timezone.utc).timestamp())
        add_todo(todos, tid, args[0])
        _save(TODOS, todos)
        print(f"quarried into the holding pen: {tid}  ({args[0]})")
    elif cmd == "todos":
        backlog = _load(TODOS).get("backlog", {}) or {}
        print(f"TODO holding pen ({TODOS}) — pre-DAG; convert-todo to mason into the frontier")
        for tid, d in sorted(backlog.items()):
            print(f"  • {tid}  {d.get('intent', '')}")
        if not backlog:
            print("  (empty)")
    elif cmd == "convert-todo" and args:
        todos = _load(TODOS)
        if args[0] not in todos.get("backlog", {}):
            print(f"no such todo: {args[0]}", file=sys.stderr)
            return 1
        fr = _load(FRONTIER)
        nid = convert_todo(todos, fr.setdefault("nodes", {}), args[0], deps=args[1:] or None)
        _save(FRONTIER, fr)
        _save(TODOS, todos)
        print(f"masoned {args[0]} -> {nid} (racked/dormant; unrack to climb)")
    elif cmd in ("rack", "unrack") and args:
        st = _load(store)
        n = st.get("nodes", {}).get(args[0])
        if not n:
            print(f"no such node: {args[0]}", file=sys.stderr)
            return 1
        n["racked"] = (cmd == "rack")
        if not n["racked"]:
            n.pop("racked", None)
        _save(store, st)
        print(f"{args[0]}: {'racked (dormant)' if cmd == 'rack' else 'un-racked (back on the climb)'}")
    else:
        print(__doc__.splitlines()[0])
        print("usage: dag.py [show|excise|rack <id>|unrack <id>|--self-test] [--audit]")
        print("       dag.py [todo \"<intent>\"|todos|convert-todo <todo_id> [dep ...]]")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
