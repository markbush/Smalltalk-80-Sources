window: aWindow viewport: aViewport
	"Set the receiver's window to aWindow, set its viewport to aViewport, and
	create a new local transformation for the receiver based on aWindow and
	aViewport. The receiver is scaled and translated so that aWindow, when
	transformed, coincides with aViewport.
	It is used to position a subView's window within some specific region of its
	superView's area. For example, 'subView window: aRectangle1 viewport:
	aRectangle2' sets subView's window to aRectangle1, its viewport to
	aRectangle2, and its local transformation to one that transforms aRectangle1
	to aRectange2."

	self window: aWindow.
	self setTransformation:
		(WindowingTransformation window: aWindow viewport: aViewport).
	self getViewport
