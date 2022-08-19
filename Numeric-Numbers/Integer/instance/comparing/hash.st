hash
	^(self lastDigit bitShift: 8) + (self digitAt: 1)
