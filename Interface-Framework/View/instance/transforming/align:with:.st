align: aPoint1 with: aPoint2
	"Add a translation of (aPoint2 - aPoint1) to the receiver's local transformation.
	The point in the receiver's coordinate system that previously was transformed
	to aPoint1 in the superView's coordinate system will now be transformed to
	aPoint2 in the superView's coordinate system. Other points will be translated
	by the same amount. It is normally used when adding subViews to their
	superView in order to line up the Viewport of one subView with that of
	another subView (see View|addSubView:align:with:). aPoint1 and aPoint2
	are usually points on the viewports that are to be aligned. For example,
	'subView2 align: subView2 viewport topLeft with: subView1 viewport
	topRight' would be used to place the viewport of subView2 next to the
	viewport of subView1 with the topLeft and topRight corners, respectively,
	coinciding. It is also possible to align the viewport of a subView with the
	window of the superView, e.g. 'subView align: subView viewport center
	with: superView window center'. View|align:with: assumes that the view
	has been properly scaled, if necessary, to match its superView (see
	View|scaleBy:). Typically, the coordinate systems of the receiver and its
	superView will differ only by a translation offset so that no scaling is
	necessary. "

	self setTransformation: (transformation align: aPoint1 with: aPoint2)
