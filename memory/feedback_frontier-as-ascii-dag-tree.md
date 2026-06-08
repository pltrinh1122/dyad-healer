---
name: feedback_frontier-as-ascii-dag-tree
description: Always present the frontier as an ASCII directory-tree showing DAG relationships.
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 85585997-9ca0-4e4b-8062-ace873653316
---

Always present the frontier as an **ASCII directory-style tree** that shows the DAG relationships — a dependency nests its dependents beneath it (└─ / ├─ / │ connectors), like a directory tree. Not a flat list.

**Why:** the edges (what blocks/enables what) are the point of the frontier view; a flat status list hides them. The tree makes the dependency structure legible at a glance.

**How to apply:** `python3 bin/dag.py show` is bound to render this (the `build_tree` fn — "always" enforced structurally, not by memory). When describing the frontier in prose/chat, mirror the same tree shape. Adapts cairn's `frontier_reader.build_tree`. See [[feedback_bind-marker]] (bind behavior to a mechanism, not recall), [[feedback_dm-dispose-or-escalate-dont-carry]] (backlog=inventory · frontier=active edge · rack=dormant).
