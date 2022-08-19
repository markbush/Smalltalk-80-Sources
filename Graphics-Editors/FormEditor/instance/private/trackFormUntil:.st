trackFormUntil: aBlock
	| previousPoint cursorPoint |
	previousPoint  _ self cursorPoint.
	form displayOn: Display at: previousPoint rule: Form reverse.
	[aBlock value] whileFalse:
		[cursorPoint _ self cursorPoint.
		(FlashCursor or: [cursorPoint ~= previousPoint])
			ifTrue:
			[form displayOn: Display at: previousPoint rule: Form reverse.
			form displayOn: Display at: cursorPoint rule: Form reverse.
			previousPoint  _ cursorPoint]].
	form displayOn: Display at: previousPoint rule: Form reverse.
	^ previousPoint
