locateMagnifiedView: aForm scale: scaleFactor
	"Answers with a rectangle at the location where the scaled view of the form aForm
	should be displayed."

	| tempExtent tempRect |
	tempExtent _ aForm extent * scaleFactor + (0@50).
	tempRect _ (Sensor cursorPoint" grid: scaleFactor") extent: tempExtent.
	"show magnified form size until mouse is depressed"
	[Sensor redButtonPressed]
		whileFalse:
			[Display reverse: tempRect.
			Display reverse: tempRect.
			tempRect _ (Sensor cursorPoint grid: scaleFactor)
						extent: tempExtent].
	^tempRect
