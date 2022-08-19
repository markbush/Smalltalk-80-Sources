characters: anInterval in: sourceString displayAt: aPoint clippedBy: clippingRectangle rule: ruleInteger mask: aForm
	"Simple, slow, primitive method for displaying a line of characters.  No
	wrap-around is handled."

	| ascii character characterForm |
	anInterval do:
		[:i |
		ascii _ (character _ sourceString at: i) asciiValue.
		(ascii < minAscii or: [ascii > maxAscii])
			ifTrue: [character _ (ascii _ maxAscii) asCharacter].
		characterForm _ self characterForm: character.
		characterForm
			displayOn: Display
			at: aPoint
			clippingBox: clippingRectangle
			rule: ruleInteger
			mask: aForm.
		aPoint x: aPoint x + (self widthOf: character)].
	^aPoint x
