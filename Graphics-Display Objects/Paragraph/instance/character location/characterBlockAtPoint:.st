characterBlockAtPoint: aPoint
	"Answer a CharacterBlock for characters in the text at point aPoint.
	It is assumed that aPoint has been transformed into coordinates appropriate to
	the receiver's destinationForm rectangle and the compositionRectangle."

	^CharacterBlockScanner new characterBlockAtPoint: aPoint in: self
