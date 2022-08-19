isControlWanted
	view isSelected
		ifFalse:
			[sensor yellowButtonPressed ifTrue: [view flash].
			self deselect.
			^false].
	^self viewHasCursor
