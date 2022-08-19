leaveBrackets: characterStream
	"Jump typing cursor over a close-bracket character"
	| stopIndex nextChar |
	Sensor keyboard.
		stopBlock character notNil
		ifTrue:	[stopIndex _ stopBlock stringIndex.
				nextChar _ paragraph text at: stopIndex.
				(')]>}"''' includes: nextChar) ifFalse: [^false].
				self deselect.
				startBlock _ stopBlock _ paragraph characterBlockForIndex: stopIndex+1.
				self select]
		ifFalse:	[self select].
	^ true
