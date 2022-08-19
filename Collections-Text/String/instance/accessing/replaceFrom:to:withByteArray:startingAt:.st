replaceFrom: start to: stop withByteArray: aByteArray startingAt: repStart
	"This destructively replaces elements from start to stop in the receiver
	starting at index, repStart, in the byte array, aByteArray.  Answer the
	receiver."
	| index repOff characterTable |
	<primitive: 105>
	repOff _ repStart - start.
	characterTable _ Character characterTable.	"in-line asCharacter for speed"
	index _ start - 1.
	[(index _ index + 1) <= stop]
		whileTrue:
			[self at: index put: (characterTable at: (aByteArray at: repOff + index)+1)]
