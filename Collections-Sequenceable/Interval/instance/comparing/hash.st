hash
	^(((start hash bitShift: 2)
		bitOr: stop hash)
		bitShift: 1)
		bitOr: self size
