turnOff
	"Set the state of the receiver to 'off'.  If the state of the receiver was previously
	'on', then 'self change' is sent and the receiver's off action is executed."

	self isOn
		ifTrue:
			[on _ false.
			self changed.
			self doAction: offAction]
