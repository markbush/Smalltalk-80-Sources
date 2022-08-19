isFontSubscripted: fontIndex

	^ (((self fontAt: fontIndex) emphasis) bitAt: SubscriptedBit) = 1
