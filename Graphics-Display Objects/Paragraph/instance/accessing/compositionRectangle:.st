compositionRectangle: compRectangle
	"Set the rectangle whose width is the dimension, modified by
	indents and tabsLevels, against which line wraparound is measured."

	compositionRectangle _ compRectangle.
	self composeAll
