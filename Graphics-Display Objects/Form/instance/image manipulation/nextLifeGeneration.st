nextLifeGeneration
	| nbr1 nbr2 nbr4 carry2 carry4 all delta |
	nbr1 _ Form extent: self extent.
	nbr2 _ Form extent: self extent.
	nbr4 _ Form extent: self extent.
	carry2 _ Form extent: self extent.
	carry4 _ Form extent: self extent.
	all _ self boundingBox.
	1 to: 8 do:
		[:i |
		delta _   "delta is the offset of the eight neighboring cells"
			((#(-1 0 1 1 1 0 -1 -1) at: i) @ (#(-1 -1 -1 0 1 1 1 0) at: i)).
		carry2 copy: all from: 0@0 in: nbr1 rule: 3.
		carry2 copy: all from: delta in: self rule: 1.  "AND for carry into 2"
		nbr1 copy: all from: delta in: self rule: 6.    "XOR for sum 1"
		carry4 copy: all from: 0@0 in: nbr2 rule: 3.
		carry4 copy: all from: 0@0 in: carry2 rule: 1. "AND for carry into 4"
		nbr2 copy: all from: 0@0 in: carry2 rule: 6.   "XOR for sum 2"
		nbr4 copy: all from: 0@0 in: carry4 rule: 6].   "XOR for sum 4 (ignore carry into 8)"
	self copy: all from: 0@0 in: nbr2 rule: 1.
	nbr1 copy: all from: 0@0 in: nbr2 rule: 1.
	self copy: all from: 0@0 in: nbr1 rule: 7.
	self copy: all from: 0@0 in: nbr4 rule: 4 "compute next generation"
"
 BitEditor magnifyOnScreen.
	| life |
	life _ Form fromUser.
	[Sensor redButtonPressed] whileFalse:
		[(life nextLifeGeneration magnifyBy: 8@8) displayAt: 0@0]
"
