translate: aStream noPattern: noPattern ifFail: failBlock
	| tree |
	tree _
		class parserClass new
			parse: aStream
			class: class
			noPattern: noPattern
			context: context
			notifying: self
			ifFail: [^failBlock value].
	^tree
