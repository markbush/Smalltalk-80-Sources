characterForm: character
	"Answer a Form copied out of the glyphs for this character."

	| characterForm ascii |
	ascii _ character asciiValue.
	ascii > maxAscii ifTrue: [ascii _maxAscii].
	characterForm _ Form new extent: (self widthOf: character) @ self height.
	characterForm
		copyBits: (Rectangle origin: (xTable at: ascii + 1)
					@ 0 extent: (self widthOf: character)
					@ self height)
		from: glyphs
		at: 0 @ 0
		clippingBox: characterForm boundingBox
		rule: Form over
		mask: Form black.
	^characterForm
