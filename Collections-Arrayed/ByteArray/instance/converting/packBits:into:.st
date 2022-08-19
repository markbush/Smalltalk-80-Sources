packBits: fieldSize into: byteArray
	"Pack the low order fieldSize bits of the receiver's bytes into the bytes of byteArray."

	^self packBits: fieldSize startBit: 8-fieldSize into: byteArray
