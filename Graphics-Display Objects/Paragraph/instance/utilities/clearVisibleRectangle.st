clearVisibleRectangle
	"Display the area in which the receiver presents its text so that the area
	is all one tone--in this case, all white."

	destinationForm
	  fill: self visibleRectangle
	  rule: rule
	  mask: Form white.
