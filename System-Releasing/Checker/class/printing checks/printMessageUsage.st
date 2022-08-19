printMessageUsage
	"Smalltalk printMessageUsage."
	| dict file set |
	dict _ IdentityDictionary new: 1024.
	Cursor execute showWhile:
	[CompiledMethod allInstancesDo:
		[:meth |
		set _ meth messages.
		set do:
			[:sel | dict at: sel put: (dict at: sel ifAbsent: [0]) + 1]
		]
	].
	Cursor write showWhile:
	[file _ Disk file: 'message.counts'.
	dict associationsDo:
		[:assn |
		assn value > 10
			ifTrue: [file cr; nextPutAll: assn key; tab; nextPutAll: assn value printString]].
	file close]
