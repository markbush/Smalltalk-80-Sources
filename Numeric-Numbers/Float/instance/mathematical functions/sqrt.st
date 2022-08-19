sqrt
	| guess |
	self <= 0.0 ifTrue: [self = 0.0
			ifTrue: [^0.0]
			ifFalse: [^self error: 'sqrt invalid for x < 0']].
	"copy and halve the exponent for first guess"
	guess _ self timesTwoPower: 0 - (self exponent // 2).
	5 timesRepeat: [guess _ self - (guess * guess) / (guess * 2.0) + guess].
	^guess
