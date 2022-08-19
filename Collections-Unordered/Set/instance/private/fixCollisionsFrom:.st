fixCollisionsFrom: index
	| myLength oldIndex nextIndex nextObject |
	oldIndex _ index.
	myLength _ self basicSize.
	[oldIndex _ oldIndex \\ myLength + 1.
	nextObject _ self basicAt: oldIndex.
	nextObject == nil]
		whileFalse:
			[nextIndex _ self findElementOrNil: nextObject.
			nextIndex = oldIndex
				ifFalse:
					[self basicAt: nextIndex put: nextObject.
					self basicAt: oldIndex put: nil]]
