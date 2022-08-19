send
	"The top context on the stack must be selected.  This being so, either some message
	is about to be sent in that context, or that context is about to return.  Send is only
	effective in the former case.  It will cause the next message to be sent.  The send is
	actually simulated, so that the debugger will regain control at the beginning of the
	method which is invokedi (unless it is a primitive).  In this way, you can step your
	way deeper into a computation"

	self checkContextSelection.
	processHandle interrupted ifFalse: [processHandle topContext push: processHandle proceedValue].
	processHandle interrupted: true. "simulation leaves same state as interrupting"
	context stepToSendOrReturn.
	(context ~~ processHandle topContext) | context willReturn
		ifFalse:
			[self resetContext: context step. context stepToSendOrReturn]
