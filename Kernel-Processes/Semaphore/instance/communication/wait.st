wait
	"The active Process must receive a signal through the receiver before
	proceeding.  If no signal has been sent, the active Process will be suspended
	until one is sent.  Essential.  See
	Object whatIsAPrimitive."

	<primitive: 86>
	self primitiveFailed

	"excessSignals>0
		ifTrue: [excessSignals _ excessSignals-1]
		ifFalse: [self addLastLink: Processor activeProcess suspend]"
