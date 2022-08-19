position
	"Answer the location of the string on a file."

	^(filePositionHi bitShift: 8) + filePositionLo
