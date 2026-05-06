# Helix Model Sample Dock Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 124 | watch |
| stress | window width | 145 | ship |
| edge | metric stability | 205 | ship |
| recovery | explainability | 171 | ship |
| stale | feature drift | 115 | watch |

Start with `edge` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `metric stability` against `feature drift`, not the raw score alone.
