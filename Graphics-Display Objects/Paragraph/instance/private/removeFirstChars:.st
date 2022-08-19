removeFirstChars: numberOfChars
	"Remove a number of characters from the beginning of the receiver, adjusting the composition rectangle so the displayed text moves as little as possible.  Special kludge for TextCollectorController."
	"9/14/82 SBP"

	| delta scrollDelta |
	delta _ ((self lineIndexOfCharacterIndex: numberOfChars)-1)*self lineGrid.
	scrollDelta _ self compositionRectangleDelta negated.
	delta > scrollDelta ifTrue:
		[delta _ scrollDelta. 	"deleting some visible lines"
		self clearVisibleRectangle].
	self replaceFrom: 1 to: numberOfChars with: '' asText displaying: false.
	compositionRectangle moveBy: 0@delta.
	delta = scrollDelta ifTrue: [self display]
