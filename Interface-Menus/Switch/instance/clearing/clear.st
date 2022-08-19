clear
	"Set the state of the receiver to 'off'.  If the state of the receiver was previously
	'on', then 'self change' is sent.  The receiver's off action is NOT executed."

	self isOn
		ifTrue:
			[on _ false.
			self changed]
