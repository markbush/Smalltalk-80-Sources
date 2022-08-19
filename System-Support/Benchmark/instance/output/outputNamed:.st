outputNamed: name
	"Answer with the output file or stream of the given name."

	self streamsRatherThanFiles
		ifTrue: [^Outputs at: name]
		ifFalse: [^Disk file: name]
