resetContext: aContext
	"Used when a new context becomes top-of-stack, for instance when the
	method of the selected context is re-compiled, or the simulator steps or
	returns to a new method."
	processHandle topContext: aContext.
	self changed: #context.
	context == aContext
		ifFalse: "old ctxt not in new stack"
		[self context: aContext.
		self changed: #context]
