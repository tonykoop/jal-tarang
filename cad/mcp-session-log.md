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

## Next Provenance Requirement

Any future CAD, drawing, render, tuning, water-volume, pitch-log, bowl
inventory, or support-layout artifact must add a new row here with the real
tool, source inputs, outputs, review status, and authority result.
