cursorPoint: aPoint
	"Set the current cursor position to be aPoint."
	self primCursorLocPut: aPoint.
	x _ aPoint x.
	y _ aPoint y
