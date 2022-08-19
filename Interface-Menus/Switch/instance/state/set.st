set
	"Set the state of the receiver to 'on'.  If the state of the receiver was previously
	'off', then 'self change' is sent.  The receiver's on action is NOT executed."

	self isOff
		ifTrue:
			[on _ true.
			self changed]
