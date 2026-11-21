# Independent G audit — starting review plan

Source snapshot: [upstream main @ d0018d2fde1caafdd2a2eae95f616de2b135bcdb](https://github.com/Tobillicious/universal-protection-theory/tree/d0018d2fde1caafdd2a2eae95f616de2b135bcdb)

## Mandatory questions
1. Expand the definition of `BCRDIsQG` and document every constituent field and its proof/physical status.
2. Distinguish what is derived in `G3TheLaw.lean` from what is already assumed in `BCRDIsQG`.
3. Check source-scoped vs actual-world coverage of every event and owed particular, preserving all six original X3 duties.
4. Test negative controls: empty event domain, unrepresented subjects, non-injective correspondence, finite Genesis model vs physical continuation, zero distance without equality.
5. Trace Guardian, Good, God and Gravity identity bridges independently; no conflation based on names.
6. Confirm all imports, `#print axioms`, exact build commands and logs in a complete Lean checkout.
7. Compare changes against upstream PR #720 without altering upstream.

## Boundaries
This repository's initial import is a **selected source snapshot**, not a full clone and not currently a stand-alone compiling Lean project. All original source paths are preserved under `upstream/PhysicalBridges/` and the source ref above must be used to obtain the remaining dependency graph.
