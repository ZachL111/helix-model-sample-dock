# helix-model-sample-dock

`helix-model-sample-dock` is a compact Haskell repository for ml utilities, centered on this goal: Create a Haskell reference implementation for sample workflows, centered on diagnostic reporting, negative fixtures, and human-readable error snapshots.

## Project Rationale

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Helix Model Sample Dock Review Notes

Start with `metric stability` and `feature drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Feature Set

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/helix-model-sample-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `metric stability` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Haskell code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Next Improvements

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
