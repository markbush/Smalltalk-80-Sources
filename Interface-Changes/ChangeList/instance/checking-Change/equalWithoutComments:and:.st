equalWithoutComments: text1 and: text2
	| stream1 stream2 t |
	stream1 _ ReadStream on: text1.
	stream2 _ ReadStream on: text2.
	[(t _ self nextNonComment: stream1) = (self nextNonComment: stream2)]
		whileTrue:
			[t == nil ifTrue: [^true]].
	^false
