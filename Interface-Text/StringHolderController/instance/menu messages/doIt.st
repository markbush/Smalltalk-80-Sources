doIt
	"Treat the current text selection as an expression; evaluate it"

	| result |
	self controlTerminate.
	result _
		model doItReceiver class evaluatorClass new
				evaluate: self selectionAsStream
				in: model doItContext
				to: model doItReceiver
				notifying: self
				ifFail:
					[self controlInitialize.
					^#failedDoit].
	Smalltalk logChange: self selection string.
	self controlInitialize.
	^result
