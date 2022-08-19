characterBlockAtPoint: aPoint in: aParagraph
	"Answer a CharacterBlock for character in aParagraph at point aPoint.  It is assumed that aPoint has been transformed into coordinates appropriate to the text's destinationForm rectangle and the compositionRectangle."

	super initializeFromParagraph: aParagraph clippedBy: aParagraph clippingRectangle.
	characterPoint _ aPoint.
	^self buildCharacterBlockIn: aParagraph
