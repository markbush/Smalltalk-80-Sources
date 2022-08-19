leaves: leafDictionary
	| aBreakDown |
	aBreakDown _ self sonsOver: 0.
	aBreakDown size = 0
		ifTrue:
			[self into: leafDictionary]
		ifFalse:
			[aBreakDown do: [:aMessageTally | aMessageTally leaves: leafDictionary]]
