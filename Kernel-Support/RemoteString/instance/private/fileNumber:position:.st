fileNumber: sourceIndex position: anInteger
	sourceFileNumber _ sourceIndex.
	filePositionHi _ anInteger bitShift: -8.
	filePositionLo _ anInteger bitAnd: 255
