textStyle: aTextStyle
	"Set the style by which the receiver should display its text."

	textStyle _ aTextStyle.
	form _ nil.
	self changed.
