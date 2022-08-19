isControlWanted

	^(toolMenu notNil "Galley compatibility" and: [toolMenu isControlWanted])
		or: [self viewHasCursor]
