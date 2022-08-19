on: aFillInTheBlank message: messageString displayAt: originPoint centered: centered
	"Answer an instance of me on the model aFillInTheBlank asking the question messageString. If the argument centered, a Boolean, is false, display the instance with top left corner at originPoint; otherwise, display it with its center at originPoint.  If necessary, translate so the view is completely on the screen."

	^self on: aFillInTheBlank message: messageString displayAt: originPoint centered: centered useCRController: true
