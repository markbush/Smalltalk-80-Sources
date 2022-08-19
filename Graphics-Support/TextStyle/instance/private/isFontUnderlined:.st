isFontUnderlined: fontIndex

	^ (((self fontAt: fontIndex) emphasis) bitAt: UnderlinedBit) = 1
