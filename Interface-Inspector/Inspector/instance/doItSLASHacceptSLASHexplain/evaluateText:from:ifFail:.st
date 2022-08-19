evaluateText: aText from: aController ifFail: failBlock
	^ Compiler new evaluate: aText
		in: self doItContext to: self doItReceiver
		notifying: aController ifFail: failBlock
