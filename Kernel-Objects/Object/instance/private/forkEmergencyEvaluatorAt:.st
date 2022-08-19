forkEmergencyEvaluatorAt: priority
	"Fork a process running a simple Smalltalk evaluator using as little of the system as possible.  Used for desperate debugging.  may be invoked by control-shift-C."

	| stream char |
		[Display white: (0@0 extent: 1024@36).
		'EMERGENCY EVALUATOR (priority ', priority printString, ') -- type an expression terminated by ESC' displayAt: 50@0.
		Display reverse: (0@0 extent: 1024@36).
		stream _ WriteStream on: String new.
		[[Sensor keyboardPressed] whileFalse.
		(char _ Sensor keyboard) = 160 asCharacter] whileFalse:
			[char = Character backspace
				ifTrue: [stream skip: -1.  Display black: (0@18 extent: 1024@18)]
				ifFalse: [stream nextPut: char].
			stream contents displayAt: 50@18].
		Display black: (0@0 extent: 1024@18).
		(Compiler evaluate: stream contents) printString displayAt: 50@0] forkAt: priority
