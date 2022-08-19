writing
	"Answer whether it is possible to write on the receiver."

	rwmode == nil
		ifTrue:
			[self readWriteShorten.	"default mode"
			^true].
	^(rwmode bitAnd: Write) = Write
