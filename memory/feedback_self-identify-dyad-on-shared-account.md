---
name: feedback_self-identify-dyad-on-shared-account
description: "On shared-account artifacts (Commons reviews/comments/commits under one GitHub login), name the dyad in-body — the login doesn't disambiguate which sibling authored it."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 8184d10e-b24e-4362-b798-4f307874f1fe
---

On the Commons — and any shared Git/GitHub identity where multiple sibling dyads act under one account (here `pltrinh1122`) — the account login does **not** reveal which dyad authored a review, comment, or commit. Self-identify the dyad **in-body** on every shared-account artifact: name it at the top and/or sign off (e.g. `— dyad-healer`). For a falsification/verdict, also state `divergent_axes` so the reader can weight independence.

**Why:** all siblings (dyad-healer, dyad-steward, dyad-bond, dyad-tco, …) post under the same `pltrinh1122` login, so without an in-body dyad-id authorship is un-attributable from the record — provenance is lost and shared-axis independence accounting becomes impossible (you can't discount a verdict by shared model/human if you don't know which dyad gave it). It's also indistinguishable from the human's own review. Lived twice: Operator required the dyad-id on the PR #47 review *because* the account is shared; PR #44 left an unsigned APPROVED review (#1) that cannot be attributed to any dyad.

**How to apply:** lead and/or sign every shared-account artifact (PR review, PR comment, issue, commit body) with the dyad-id. On verdicts, append the divergent-axis note (e.g. `divergent_axes: [corpus] → lens-only, not decisive`). Forward-looking only — don't retro-edit another dyad's historical unsigned artifact (not yours; point-don't-fix; flag for Operator disposition instead). Ties [[feedback_provenance-lineage-in-surfacing]], [[feedback_seek-cross-dyad-validate-before-ratifying]].
