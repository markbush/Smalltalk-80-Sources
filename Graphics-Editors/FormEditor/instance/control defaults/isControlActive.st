isControlActive

	^(toolMenu notNil "Galley compatibility" and: [toolMenu isControlWanted])
		or: [sensor noButtonPressed
			or: [sensor blueButtonPressed not and: [self viewHasCursor]]]
