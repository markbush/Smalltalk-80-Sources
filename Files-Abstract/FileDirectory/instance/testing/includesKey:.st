includesKey: aFileName
	"Answer whether a file whose name is aFileName is included in the receiver."
	| file |
	file _ self find: (self initFileName: aFileName).
	file notNil ifTrue:
		[file release. "close the IFS connection, if an IFS leaf file"
		^true].
	^false
