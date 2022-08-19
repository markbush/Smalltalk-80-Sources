extent: extent offset: aPoint bits: aBitmap
	"Create a virtual bit map with width = (extent x) and height = (extent y)
	with the bits = aBitmap."

	width _ extent x.
	height _ extent y.
	offset _ aPoint.
	bits _ aBitmap
