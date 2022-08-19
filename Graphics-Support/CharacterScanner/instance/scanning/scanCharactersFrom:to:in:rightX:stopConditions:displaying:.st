scanCharactersFrom: startIndex to: stopIndex in: sourceString rightX: rightX stopConditions: stops displaying: display

	"This is the inner loop of text display -- but consider scanCharactersFrom: to:rightX: which would get the string, stopConditions and displaying from the instance. March through source String from startIndex to stopIndex. If any character is flagged with a non-nil entry in stops, then return the corresponding value. Determine width of each character from xTable. If dextX would exceed rightX, then return stops at: 258. If displaying is true, then display the character. Advance destX by the width of the character. If stopIndex has been reached, then return stops at: 257. Fail under the same conditions that the Smalltalk code below would cause an error. Optional. See Object documentation whatIsAPrimitive. "

	| ascii nextDestX |
	<primitive: 103>
	lastIndex _ startIndex.
	[lastIndex <= stopIndex]
		whileTrue:
			[ascii _ (sourceString at: lastIndex) asciiValue.
			(stopConditions at: ascii + 1) ~~ nil ifTrue: [^stops at: ascii + 1].
			sourceX _ xTable at: ascii + 1.
			nextDestX _ destX + (width _ (xTable at: ascii + 2) - sourceX).
			nextDestX > rightX ifTrue: [^stops at: CrossedX].
			display ifTrue: [self copyBits].
			destX _ nextDestX.
			lastIndex _ lastIndex + 1].
	lastIndex _ stopIndex.
	^stops at: EndOfRun
