(* ::Package:: *)
(* Jal Tarang parametric Wolfram model. Estimate-only source; not fabrication authority. *)

ClearAll["Global`*"];

jalTarangMetadata = <|
   "instrument" -> "Jal Tarang",
   "packet" -> "V5 L2 concept / pending-measurement packet",
   "modelName" -> "Estimate-only water-loaded bowl mode relationship",
   "authority" -> "reference_only",
   "calibrationStatus" -> "pending measurement, not fabrication authority"
   |>;

bowlCountEstimate = 12; (* estimate — pending measurement, not fabrication authority *)
waterMassRatioEstimate = 0.35; (* estimate — pending measurement, not fabrication authority *)
waterMassRatioMinimumEstimate = 0.; (* estimate — pending measurement, not fabrication authority *)
waterMassRatioMaximumEstimate = 2.; (* estimate — pending measurement, not fabrication authority *)
waterCouplingCoefficientEstimate = 0.75; (* estimate — pending measurement, not fabrication authority *)
waterCouplingMinimumEstimate = 0.; (* estimate — pending measurement, not fabrication authority *)
waterCouplingMaximumEstimate = 2.; (* estimate — pending measurement, not fabrication authority *)
fillStepCountEstimate = 8; (* estimate — pending measurement, not fabrication authority *)
fillStepCountMinimumEstimate = 0; (* estimate — pending measurement, not fabrication authority *)
fillStepCountMaximumEstimate = 16; (* estimate — pending measurement, not fabrication authority *)
fillIncrementMassRatioEstimate = 0.05; (* estimate — pending measurement, not fabrication authority *)
fillIncrementMassRatioMinimumEstimate = 0.01; (* estimate — pending measurement, not fabrication authority *)
fillIncrementMassRatioMaximumEstimate = 0.25; (* estimate — pending measurement, not fabrication authority *)

ClearAll[
  jalTarangFrequencyRatio,
  jalTarangCentsShift,
  jalTarangFillSeries,
  jalTarangSensitivity
  ];

jalTarangFrequencyRatio[waterMassRatio_, waterCouplingCoefficient_] :=
  1/Sqrt[1 + waterCouplingCoefficient waterMassRatio];

jalTarangCentsShift[waterMassRatio_, waterCouplingCoefficient_] :=
  1200 Log[2, jalTarangFrequencyRatio[waterMassRatio, waterCouplingCoefficient]];

jalTarangFillSeries[stepCount_Integer?NonNegative, fillIncrementMassRatio_, waterCouplingCoefficient_] :=
  Table[
   With[
    {ratio = jalTarangFrequencyRatio[step fillIncrementMassRatio, waterCouplingCoefficient]},
    {step, step fillIncrementMassRatio, ratio, 1200 Log[2, ratio]}
    ],
   {step, 0, stepCount}
   ];

jalTarangSensitivity[waterMassRatio_, waterCouplingCoefficient_] :=
  D[1/Sqrt[1 + coefficient ratio], ratio] /. {
    ratio -> waterMassRatio,
    coefficient -> waterCouplingCoefficient
    };

Manipulate[
 Module[
  {
   ratio = jalTarangFrequencyRatio[waterMassRatio, waterCouplingCoefficient],
   cents = jalTarangCentsShift[waterMassRatio, waterCouplingCoefficient],
   sensitivity = jalTarangSensitivity[waterMassRatio, waterCouplingCoefficient],
   fillSeries = jalTarangFillSeries[fillStepCount, fillIncrementMassRatio, waterCouplingCoefficient]
   },
  Column[
   {
    Style[jalTarangMetadata["modelName"], 14, Bold],
    Grid[
     {
      {"authority", jalTarangMetadata["authority"]},
      {"normalized frequency ratio", NumberForm[ratio, {5, 3}]},
      {"cents shift from dry response", NumberForm[cents, {7, 1}]},
      {"local sensitivity d(ratio)/d(water ratio)", NumberForm[sensitivity, {7, 4}]},
      {"bowl count placeholder", bowlCountEstimate}
      },
     Alignment -> Left,
     Frame -> All
     ],
    ListLinePlot[
     fillSeries[[All, {2, 3}]],
     Frame -> True,
     FrameLabel -> {
       "water mass / dry modal mass estimate",
       "normalized frequency ratio"
       },
     PlotMarkers -> Automatic,
     PlotRange -> All,
     ImageSize -> Large
     ],
    Grid[
     Prepend[
      fillSeries,
      {"fill step", "water/modal mass ratio", "frequency ratio", "cents shift"}
      ],
     Alignment -> Left,
     Frame -> All
     ]
    }
   ]
  ],
 {{waterMassRatio, waterMassRatioEstimate, "water mass / dry modal mass estimate"},
  waterMassRatioMinimumEstimate, waterMassRatioMaximumEstimate, Appearance -> "Labeled"},
 {{waterCouplingCoefficient, waterCouplingCoefficientEstimate, "water coupling estimate"},
  waterCouplingMinimumEstimate, waterCouplingMaximumEstimate, Appearance -> "Labeled"},
 {{fillStepCount, fillStepCountEstimate, "logged fill steps estimate"},
  fillStepCountMinimumEstimate, fillStepCountMaximumEstimate, 1, Appearance -> "Labeled"},
 {{fillIncrementMassRatio, fillIncrementMassRatioEstimate, "fill increment mass-ratio estimate"},
  fillIncrementMassRatioMinimumEstimate, fillIncrementMassRatioMaximumEstimate, Appearance -> "Labeled"},
 TrackedSymbols :> {
   waterMassRatio,
   waterCouplingCoefficient,
   fillStepCount,
   fillIncrementMassRatio
   }
 ]
