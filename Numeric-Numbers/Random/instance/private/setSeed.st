setSeed
	seed _ Time millisecondClockValue bitAnd: 65535
		"Time millisecondClockValue gives a large integer;  I only want the lower 16 bits."
