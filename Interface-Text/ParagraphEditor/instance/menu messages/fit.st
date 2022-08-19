fit
	"Make the bounding rectangle of the paragraph contain all the text while not
	changing the width of the view of the paragraph."

	self deselect.
	paragraph clearVisibleRectangle.
	paragraph fit.
	paragraph displayOn: Display.
	paragraph outline.
	self select.
	self updateMarker
