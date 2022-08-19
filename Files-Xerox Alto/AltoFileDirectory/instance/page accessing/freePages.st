freePages
	| npages byte |
	self open.
	bitsFile position: Boffset.
	npages _ 0.
	1 to: totalPages by: 8 do:
		[:i | (byte _ bitsFile next) = 255
		  ifFalse:
			["possibly up to 8 unused"
			npages _ npages + 8.
			[byte = 0] whileFalse:
				[npages _ npages - (byte bitAnd: 1).
				byte _ byte bitShift: -1]
			"all used"]].
	^npages
