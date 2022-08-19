skipSeparators
	"Move the receiver's position past any separators."

	[self atEnd == false and: [self peek isSeparator]]
		whileTrue: [self next]
