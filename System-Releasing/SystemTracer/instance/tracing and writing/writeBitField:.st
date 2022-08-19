writeBitField: bits
	bits class == SmallInteger
		ifTrue:
			[file nextPut: (bits bitShift: -8).
			file nextPut: (bits bitAnd: 255)]
		ifFalse:
			[file nextPut: (bits at: 2).
			file nextPut: (bits at: 1)]
