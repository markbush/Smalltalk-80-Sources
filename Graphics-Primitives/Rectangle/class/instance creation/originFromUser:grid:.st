originFromUser: extentPoint grid: scaleFactor
	"Answer an instance of me that is determined by having the
	user designate the top left corner.  The width and height are determined
	by extentPoint.  The gridding for user selection is scaleFactor. Assumes that the
	sender has determined an extent that is a proper multiple of scaleFactor."

	| tempRect |
	tempRect _ (Sensor cursorPoint grid: scaleFactor) extent: extentPoint.
	[Sensor redButtonPressed]
		whileFalse:
			[Display reverse: tempRect.
			Display reverse: tempRect.
			tempRect _ (Sensor cursorPoint grid: scaleFactor) extent: extentPoint].
	^tempRect
