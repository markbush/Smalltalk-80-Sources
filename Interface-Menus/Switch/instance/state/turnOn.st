turnOn
	"Set the state of the receiver to 'on'.  If the state of the receiver was previously
	'off', then 'self change' is sent and the receiver's on action is executed."

	self isOff
		ifTrue:
			[on _ true.
			self changed.
			self doAction: onAction]
