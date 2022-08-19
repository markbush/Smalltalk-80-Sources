reverseRectangle: aRectangle
	"Highlight the part of aRectangle which is visible"
	| rect |
	rect _ aRectangle intersect: self visibleRectangle.
	destinationForm fill: rect rule: Form reverse mask: mask.
