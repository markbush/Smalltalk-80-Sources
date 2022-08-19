suspend
	"Stop the process that the receiver represents in such a way that it can be
	restarted at a later time (by sending the receiver the message resume). If
	the receiver represents the activeProcess, suspend it. Otherwise fail and
	the code below will remove the receiver from the list of waiting
	processes. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 88>
	Processor activeProcess == self
		ifTrue: [self primitiveFailed]
		ifFalse:
			[Processor remove: self ifAbsent: [self error: 'This process was not active'].
			myList _ nil]
