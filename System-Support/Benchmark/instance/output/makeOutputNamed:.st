makeOutputNamed: name
	"Create a new output file or stream of the given name."

	self streamsRatherThanFiles
		ifTrue: [Outputs == nil ifTrue: [Outputs _ Dictionary new].
				Outputs at: name put:
					(ReadWriteStream on: (String new: 1000))].
	^self outputNamed: name
