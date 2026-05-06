# Review Journal

The repository goal stays the same: create a Haskell reference implementation for sample workflows, centered on diagnostic reporting, negative fixtures, and human-readable error snapshots. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 124, lane `watch`
- `stress`: `window width`, score 145, lane `ship`
- `edge`: `metric stability`, score 205, lane `ship`
- `recovery`: `explainability`, score 171, lane `ship`
- `stale`: `feature drift`, score 115, lane `watch`

## Note

A future change should add new cases before it changes the scoring rule.
