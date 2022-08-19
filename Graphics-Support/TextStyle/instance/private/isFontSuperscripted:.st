isFontSuperscripted: fontIndex

	^ (((self fontAt: fontIndex) emphasis) bitAt: SuperscriptedBit) = 1
