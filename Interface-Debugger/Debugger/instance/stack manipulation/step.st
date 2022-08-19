step
	"Some context is selected (force top if none).  When this is so, either some message
	is about to be sent in that context, or that context is about to return.  Step will cause
	the next message to be sent or the return to be executed.  In either case, the debugger
	regains control so that you can step your way down through a method, and out to the
	caller when it returns.  Note that the execution invoked by step is actually simulated,
	so it will run much slower than normal"

	| currentContext |
	self checkContextSelection.
	processHandle interrupted ifFalse: [processHandle topContext push: processHandle proceedValue].
	processHandle interrupted: true. "simulation leaves same state as interrupting"
	context == processHandle topContext
		ifTrue:
			[currentContext _ context.
			currentContext stepToSendOrReturn.
			currentContext willReturn
				ifTrue:
					[currentContext _ currentContext step.
					currentContext stepToSendOrReturn.
					self resetContext: currentContext]
				ifFalse:
					[currentContext completeCallee: currentContext step.
					self changed: #pc.
					self updateInspectors]]
		ifFalse:
			["Have to complete any stuff called from here"
			context completeCallee: processHandle topContext.
			self resetContext: context]
