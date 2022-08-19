miniFormat
	"Replace selection with selection un-wrapped."

	| inStream outStream char |
	inStream _ ReadStream on: (self selection copyWithout: Character tab).
	outStream _ WriteStream on: (String new: self selection size).
	[inStream atEnd]
		whileFalse:
			[char _ inStream next.
			char isSeparator
				ifTrue:
					[outStream space.
					[inStream atEnd not and: [inStream peek isSeparator]]
						whileTrue: [inStream next]]
				ifFalse: [outStream nextPut: char]].
	self deselect.
	self replaceSelectionWith: outStream contents asText.
	self select
