isControlActive
	^status == #active
		and: [sensor anyButtonPressed
				ifTrue: [view containsPoint: sensor cursorPoint]
				ifFalse: [true]]
