gridWithLead: leadInteger
	"Set the line grid of the receiver's style for displaying text to the height
	of the first font in the receiver's style + the argument, leadInteger."

	textStyle
		gridForFont: (text emphasisAt: 1)
		withLead: leadInteger.		"assumes only one font referred to by runs"
	self updateCompositionHeight.
