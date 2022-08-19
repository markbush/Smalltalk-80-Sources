clearInside
	"Use the inside color to paint the inset display box (excluding the border,
	see View|insetDisplayBox) of the receiver."

	insideColor ~= nil ifTrue: [self clearInside: insideColor]
