filesMatching: pattern
	^super filesMatching:
		(pattern last = $.
			ifTrue: [pattern]
			ifFalse: [pattern , '.'])
