# Design Intent — jal-tarang rev A

- Master CAD: none exists. `wolfram/jal-tarang-wolfram-model.wl` (sha256: 7afeedbce4ab64060ec00a03c587cd01fc93bd902b0eaa365a19f2b69b3c3774) is the only computational source — an Estimate-only symbolic water-loading model (reference_only).
- Function: A tuned vessel idiophone — bowls (porcelain/ceramic/glass/metal, material undecided) partly filled with water and struck with light mallets; changing water volume changes each bowl's pitch (design.md "Concept"). The core engineering problem is a repeatable measurement/tuning workflow, not a fixture.
- Environment: struck idiophone; wet setup (spill/handling risk); session-to-session drift from evaporation/handling is a known open problem.
- Target qty: 1 (prototype study). Deadline: TBD. Budget: TBD.

## Critical dimensions (carry tolerances)

None exist. This packet is explicitly concept-only — design.md's "Parametric
Intent" section names ten unknowns (`pending_bowl_count`,
`pending_bowl_material`, `pending_bowl_diameters`, `pending_bowl_wall_profile`,
`pending_target_scale`, `pending_pitch_values`,
`pending_water_volume_per_bowl`, `pending_mallet_material`,
`pending_support_layout`, `pending_labeling_method`) and states none are
specified. The only numeric value anywhere in the packet is
`bowlCountEstimate = 12` in the Wolfram model, itself labeled "estimate —
pending measurement, not fabrication authority" — it is a placeholder for the
symbolic water-loading curve, not a bowl-count decision.

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Bowl count | TBD (Wolfram estimate placeholder: 12) | measurement_required | not yet decided | wolfram/jal-tarang-wolfram-model.wl `bowlCountEstimate` |
| Bowl diameter/material/wall profile | TBD | measurement_required | governs pitch, tuning range | design.md "Parametric Intent" (not specified) |
| Water volume per bowl | TBD | measurement_required | primary tuning variable | design.md / bom.csv BOM-002 |
| Pitch/scale targets | TBD | measurement_required | repertoire target | design.md (not specified) |

## Incidental (free for DFM)

- Not applicable yet — no geometry exists to separate critical vs. incidental features.

## Must-nots (DFM may never violate)

- Do not create CAD, DXF, tuning tables, water-volume tables, pitch targets,
  acoustic predictions, or mallet specifications before measured bowl
  inventory and pitch-vs-fill data exist (decision-record.md "Decisions").
- Do not imply final tuning via permanent water-level marks or labels before
  repeatability data exists (decision-record.md "Alternatives Considered").
- Do not treat the Wolfram model's Estimate placeholders (bowl count, water
  coupling coefficient, fill increment ratio) as measured or fabrication
  values.

## Material intent

- Candidate bowl materials: porcelain, ceramic, glass, or metal — all open
  per design.md "Mechanism Direction"; bom.csv BOM-001 marks material as
  `pending_measurement`.

## Stage status

Stage 0 intake complete 2026-07-01 (documentation-only; no CAD master exists
to intake). Gate A (Alpha shop compile) NOT applicable until measured bowl
inventory and geometry exist.
