getSource
	"Answer the source code for the receiver.  Answer nil if there are
	no source files specified in the global SourceFiles."

	| end highByte position source |
	SourceFiles == nil ifTrue: [^nil].
	Cursor read
		showWhile:
			[end _ self size.
			highByte _ self at: end.
			position _ highByte bitAnd: 63.
			position _ position * 256 + (self at: end - 1).
			position _ position * 256 + (self at: end - 2).
			position = 0
				ifTrue: [source _ nil]
				ifFalse: [source _
							(RemoteString newFileNumber:
								(highByte bitShift: -6) + 1 position: position) string]].
	^source
