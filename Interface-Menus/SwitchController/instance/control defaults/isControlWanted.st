isControlWanted
	self viewHasCursor ifTrue: [cursor == nil ifFalse: [cursor show]].
	^self viewHasCursor & sensor redButtonPressed
