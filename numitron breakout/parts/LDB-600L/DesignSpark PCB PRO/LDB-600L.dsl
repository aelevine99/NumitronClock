SamacSys ECAD Model
2258505/1526577/2.50/9/3/Power Supply

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c130_h80"
		(holeDiam 0.8)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.300) (shapeHeight 1.300))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.300) (shapeHeight 1.300))
	)
	(padStyleDef "s130_h80"
		(holeDiam 0.8)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.300) (shapeHeight 1.300))
		(padShape (layerNumRef 16) (padShapeType Rect)  (shapeWidth 1.300) (shapeHeight 1.300))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "LDB600L" (originalName "LDB600L")
		(multiLayer
			(pad (padNum 1) (padStyleRef s130_h80) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c130_h80) (pt 0.000, -2.540) (rotation 90))
			(pad (padNum 3) (padStyleRef c130_h80) (pt 0.000, -25.400) (rotation 90))
			(pad (padNum 4) (padStyleRef c130_h80) (pt 0.000, -27.940) (rotation 90))
			(pad (padNum 5) (padStyleRef c130_h80) (pt 15.240, -27.940) (rotation 90))
			(pad (padNum 6) (padStyleRef c130_h80) (pt 15.240, -25.400) (rotation 90))
			(pad (padNum 7) (padStyleRef c130_h80) (pt 15.240, -7.620) (rotation 90))
			(pad (padNum 8) (padStyleRef c130_h80) (pt 15.240, -2.540) (rotation 90))
			(pad (padNum 9) (padStyleRef c130_h80) (pt 15.240, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 7.620, -13.840) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt 17.77 -29.74) (pt -2.53 -29.74) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.53 -29.74) (pt -2.53 2.06) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.53 2.06) (pt 17.77 2.06) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 17.77 2.06) (pt 17.77 -29.74) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 18.77 3.06) (pt -3.53 3.06) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -3.53 3.06) (pt -3.53 -30.74) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -3.53 -30.74) (pt 18.77 -30.74) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 18.77 -30.74) (pt 18.77 3.06) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 17.77 2.06) (pt -2.53 2.06) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.53 2.06) (pt -2.53 -29.74) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.53 -29.74) (pt 17.77 -29.74) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 17.77 -29.74) (pt 17.77 2.06) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.1 0) (pt -3.1 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.05, 0) (radius 0.05) (startAngle 180) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3 0) (pt -3 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.05, 0) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "LDB-600L" (originalName "LDB-600L")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 1400 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 6) (pt 1400 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 7) (pt 1400 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 8) (pt 1400 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 9) (pt 1400 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 1200 mils 100 mils) (width 6 mils))
		(line (pt 1200 mils 100 mils) (pt 1200 mils -500 mils) (width 6 mils))
		(line (pt 1200 mils -500 mils) (pt 200 mils -500 mils) (width 6 mils))
		(line (pt 200 mils -500 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1250 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "LDB-600L" (originalName "LDB-600L") (compHeader (numPins 9) (numParts 1) (refDesPrefix PS)
		)
		(compPin "1" (pinName "-VIN_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "-VIN_2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "11" (pinName "-VOUT_1") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "12" (pinName "-VOUT_2") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "13" (pinName "+VOUT_1") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "14" (pinName "+VOUT_2") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "21" (pinName "PWM DIM") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "23" (pinName "+VIN_1") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "24" (pinName "+VIN_2") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "LDB-600L"))
		(attachedPattern (patternNum 1) (patternName "LDB600L")
			(numPads 9)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "11")
				(padNum 4) (compPinRef "12")
				(padNum 5) (compPinRef "13")
				(padNum 6) (compPinRef "14")
				(padNum 7) (compPinRef "21")
				(padNum 8) (compPinRef "23")
				(padNum 9) (compPinRef "24")
			)
		)
		(attr "Mouser Part Number" "709-LDB-600L")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/MEAN-WELL/LDB-600L/?qs=GaJ26EWJkZSmCfvt0r4d6g%3D%3D")
		(attr "Manufacturer_Name" "Mean Well")
		(attr "Manufacturer_Part_Number" "LDB-600L")
		(attr "Description" "LED Power Supplies 9-28Vin 2-30Vout 600mA pin style")
		(attr "Datasheet Link" "https://www.meanwell.com/Upload/PDF/LDB-L/LDB-L-SPEC.PDF")
		(attr "Height" "12.25 mm")
	)

)