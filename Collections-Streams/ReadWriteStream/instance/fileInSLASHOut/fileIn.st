fileIn
	"This is special for reading expressions from text that has been formatted
	with exclamation delimitors.  The expressions are read and passed to the
	Compiler.  Answer the result of compilation."

	| val |
	Cursor read showWhile:
		[[self atEnd]
			whileFalse:
				[self skipSeparators.
				val _ (self peekFor: $!)
							ifTrue: [(Compiler evaluate: self nextChunk logged: false)
									scanFrom: self]
							ifFalse: [Compiler evaluate: self nextChunk logged: true]].
		self close].
	^val
