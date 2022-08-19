dragForm

	tool = #block
		ifTrue:
			[Cursor origin showWhile:
			[[sensor anyButtonPressed
				or: [sensor keyboardPressed
				or: [self viewHasCursor not]]]
				whileFalse: []].
			^ self cursorPoint]
		ifFalse:
			[^Cursor blank showWhile:
			[self trackFormUntil:
				[sensor anyButtonPressed
					or: [sensor keyboardPressed
					or: [self viewHasCursor not]]]]].
