arcTan
	"Answers with the angle in radians"

	| theta term y eps i |
	self = 1.0 ifTrue: [^Fourthpi].
	self = -1.0 ifTrue: [^Fourthpi negated].
	self * self > 1.0
		ifTrue:
			[theta _ Halfpi.
			y _ -1.0 / (self * self).
			term _ -1.0 / self abs]
		ifFalse:
			[theta _ 0.0.
			y _ 0.0 - (self * self).
			term _ self abs].
	i _ 1.
	eps _ 1.0e-4.
	[term abs > eps]
		whileTrue:
			[theta _ theta + term.
			term _ term * y * i asFloat / (i + 2) asFloat.
			i _ i + 2].
	^self sign asFloat * theta
