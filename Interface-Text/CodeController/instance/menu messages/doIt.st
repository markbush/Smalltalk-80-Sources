doIt
	"Evaluate the current text selection as an expression"
	| result selectionStart oldTextSize selection |
	self controlTerminate.
	selectionStart _ startBlock stringIndex.
	oldTextSize _ self text size.
	selection _ self selection.
	result _
		model doItReceiver class evaluatorClass new
				evaluate: self selectionAsStream
				in: model doItContext
				to: model doItReceiver
				notifying: self
				ifFail:
					[self controlInitialize.
					^#failedDoit].
	self selection asString = selection asString ifFalse:
		[self selectFrom: selectionStart  "Reselect doIt range after compiler interaction"
			to: selectionStart + selection size - 1 + (self text size - oldTextSize)].
	Smalltalk logChange: self selection string.
	model doItValue: result.
	self controlInitialize.
	^result
