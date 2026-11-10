# Roadmap

Planned releases up to v1.0 and the JOSS submission. Dates are target
quarters, not commitments. Phase numbers refer to the development plan
used for this package.

Last revised: November 2026.

## v0.0.1 (Q4 2026)

Project scaffold. Packaging, tests and CI in place; PyPI name claimed.
No functionality. (Phase 0)

## v0.1 (Q1 2027)

Data types and loaders.

- `Decay` and `IRF` data types with validation on construction
- Text loader for TCSPC exports: delimiter, decimal comma and ns/ps
  detection, missing-value tokens
- Regridding of a decay and IRF onto a shared time axis
- Parser for Hitachi F-7000 steady-state emission exports

(Phases 1 and 2)

## v0.2 (Q1 2027)

Single-decay reconvolution fitting.

- Multi-exponential fit convolved with a measured IRF, Poisson weighting
- Negative amplitudes allowed for rise components
- F-test, AIC and BIC for choosing the number of components

(Phase 3)

## v0.3 (Q2 2027)

Multi-wavelength fitting.

- Global fit with lifetimes shared across wavelengths
- Per-wavelength fit with independent lifetimes, optional F-test
  component selection

Both modes are kept. They give different solvation times for slowly
relaxing solvents, and the choice should be the user's. (Phase 3)

## v0.4 (Q2 2027)

Time-resolved emission spectra.

- TRES reconstruction from either fit type, scaled by the steady-state
  spectrum
- Two time-zero conventions: IRF peak, and the Fee-Maroncelli estimate
  from a non-polar reference
- Peak frequency ν(t), solvation response C(t), and the fraction of the
  Stokes shift missed by the instrument response

(Phase 4)

## v0.5 (Q2 2027)

Validation against published results.

- Coumarin 153 in methanol (Horng et al., J. Phys. Chem. 1995)
- Coumarin 153 in four choline chloride deep eutectic solvents
  (Turner and Kim, J. Chem. Phys. 2018)

Validation scripts and small reference datasets ship with the tests.
(Phase 4.5)

## v0.6 (Q2 2027)

Export to crosspeak. A perturbation series of emission spectra is
returned as a matrix plus two axes in wavenumber, following the interop
contract in `docs/interop.md`. No dependency on crosspeak. (Phase 4.6)

## v0.7 (Q3 2027)

Fluorescence anisotropy. Joint fit of parallel and perpendicular decays
with a measured G factor.

## v0.8 (Q3 2027)

Documentation site, worked examples on real data, and plotting helpers
for fits and TRES. (Phase 5)

## v1.0 (Q4 2027)

Release polish, archived release on Zenodo. (Phase 6)

## After v1.0

- Bootstrap confidence intervals
- Parser for Horiba Fluorolog exports
- Command-line interface
