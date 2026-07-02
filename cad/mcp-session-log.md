<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# CAD MCP Session Log

Status: V5 provenance stub for `jal-tarang`.

No MCP, CAD, DXF, image generation, desktop Wolfram, acoustic measurement, or
fabrication tool produced artifacts for this repository. Wolfram source added
later was authored by hand as reference-only code.

## Step 0 QMD

| timestamp | command | result |
| --- | --- | --- |
| 2026-05-30 | `qmd query "jal tarang tuned porcelain or metal bowls partly filled with water struck with mallets pitch set by water volume Indian melodic idiophone"` | Tooling timeout: qmd entered node-llama-cpp CPU fallback and returned no usable context before `timeout 30` exited with code 124. |
| 2026-05-30 | `qmd search "jal-tarang" -c instrument-builds` | No results found. |

## Tool Sessions

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2026-05-30-codex-jal-tarang-l1 | none | User prompt plus qmd no-result/timeout Step 0 | `README.md`; `design.md`; `bom.csv`; `decision-record.md`; `visual-output-register.csv`; `cad/mcp-session-log.md` | concept_packet_scaffold | concept_only | self_checked | No CAD geometry, DXF coordinates, bowl dimensions, water volumes, tuning values, acoustic predictions, or mallet specifications were generated. |
| 2026-05-30-codex-jal-tarang-wolfram | codex text edit | User round 8 Wolfram authoring prompt; existing concept packet | `jal-tarang-starter.wl`; `wolfram/jal-tarang-wolfram-model.wl`; `visual-output-register.csv`; `cad/mcp-session-log.md` | wolfram_source_authoring | reference_only | self_checked | No MCP, Wolfram Desktop, Wolfram Cloud, CAD, measurement, or fabrication session was run. Source authored by hand; all physical inputs are Estimate placeholders pending measurement and not fabrication authority. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | `README.md`; `design.md`; `bom.csv`; `cut-list.csv`; `decision-record.md`; `wolfram/jal-tarang-wolfram-model.wl` | `README.md`; `risks.md`; `sourcing.csv`; `validation.csv`; `drawing-brief.md`; `decision-record.md`; `visual-output-register.csv` | packet_refresh | concept_only | self_checked | V5 refresh pass: normalized status line to approved value (kept original caveat prose), scaffolded missing baseline files (all TBD/measurement_required), added evolution/ Stage 0 intake. Deliberately did NOT author cad/*.scad — no bowl count, diameter, or geometry exists anywhere in this packet to parameterize from (see decision-record.md "V5 Refresh Pass"); escalated to orchestrator instead of inventing a placeholder dimension. |

## Next Provenance Requirement

Any future CAD, drawing, render, tuning, water-volume, pitch-log, bowl
inventory, or support-layout artifact must add a new row here with the real
tool, source inputs, outputs, review status, and authority result.
