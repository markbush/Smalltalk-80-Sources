terminate
	"Perhaps this method should be primitive.  If the a process might run at
	any moment (like a Delay), and another process is trying to terminate it,
	there is a race condition in this method.  The remove:ifAbsent: may get
	confused.  One way to avoid this is to let Delays terminate themselves.
	See MessageTally spyEvery:on: for an example. "

	| context |
	Processor activeProcess == self
		ifTrue:
			[thisContext sender == nil ifFalse: [thisContext sender release].
			thisContext removeSelf suspend]
		ifFalse:
			["remove me first, then destroy me"
			myList == nil
				ifFalse:
					[myList remove: self ifAbsent: [].
					myList _ nil].
			context _ suspendedContext.
			suspendedContext _ nil.
			(context ~~ nil and: [context sender ~~ nil])
				ifTrue: [context sender release]]
