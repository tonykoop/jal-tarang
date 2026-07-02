<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Risks

## Acoustic / Tuning

- Bowl pitch depends on water volume, strike point, support surface, and
  evaporation/handling drift during a session — none of this is measured yet
  (design.md "Failure Modes").
- Fill state may not be repeatable after draining and refilling without a
  measured, repeatable fill workflow.
- Bowls may ring poorly after water is added or after moving to a different
  support surface.

## Fabrication / Sourcing

- No bowl count, material, diameter, or wall profile is specified — any future
  CAD or cut-list must trace to measured bowl inventory data, not this concept
  packet (decision-record.md "Decisions").
- Live sourcing has not been checked; bom.csv/sourcing.csv costs and lead
  times are all TBD placeholders.
- Mallets may chip, mute, or overdrive a bowl rim if selected before rim
  safety/attack testing.

## Safety

- Wet setup and bowl handling introduce spill and slip risk; no spill-control
  kit has been validated yet (bom.csv BOM-016).
- Bowl support/cradle stability is untested; an unstable support risks
  dropped/cracked bowls.

## Readiness Boundary

This is an `L2 V5 build-packet candidate` — concept / pending-measurement
only. It is not fabrication authority, not a measured traditional tuning
packet, and not a performance-ready setup guide (README.md, decision-record.md
"Promotion Gates"). Promotion to L3 requires measured bowl dimensions or
reviewed drawings plus measured pitch-versus-water data and validated support
behavior.
