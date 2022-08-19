replaceFrom: start to: stop withString: aString startingAt: repStart
	"This destructively replaces elements from start to stop in the receiver
	starting at index, repStart, in the string, aString.  Answer the
	receiver."
	| index repOff |
	<primitive: 105>
	repOff _ repStart - start.
	index _ start - 1.
	[(index _ index + 1) <= stop]
		whileTrue:
			[self at: index put: (aString at: repOff + index) asInteger]
