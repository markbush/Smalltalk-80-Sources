cos
	"Answers with the cosine of the receiver in radians."

	self < 0.0 ifTrue: [^(self + Halfpi) sin].
	^(Halfpi - self) sin
