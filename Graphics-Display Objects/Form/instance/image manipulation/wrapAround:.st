wrapAround: aPoint
	"Answer a new form which contains the image of the receiver, but translated by deltaPoint, with wrap-around.  Used for realigning halftone masks.  Assumes the receiver is 16x16 with zero offset."

	| newForm delta |
	newForm _ Form extent: width@height.
	delta _ (aPoint x\\16)@(aPoint y\\16).
	delta = (0@0) ifTrue: [^self].
	self displayOn: newForm at: delta-(16@16).
	self displayOn: newForm at: delta-(16@0).
	self displayOn: newForm at: delta-(0@16).
	self displayOn: newForm at: delta.
	^newForm

	"[Sensor anyButtonPressed] whileFalse:
		[((Cursor normal wrapAround: Sensor cursorPoint)
			magnifyBy: 8@8) displayAt: 100@100]"
