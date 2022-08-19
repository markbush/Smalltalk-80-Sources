border: aRectangle widthRectangle: insets mask: aHalfTone clippingBox: clipRect
	"Paint a border whose rectangular area is defined by aRectangle.  The width of
	each edge of the border is determined by the four coordinates of insets.
	Uses aHalfTone for drawing the border."
	(aRectangle areasOutside: (aRectangle insetBy: insets)) do:
		[:edgeStrip | self fill: (edgeStrip intersect: clipRect) mask: aHalfTone]
