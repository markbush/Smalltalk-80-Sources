addSubView: aSubView align: aPoint1 with: aPoint2
	"Add aView to the receiver's list of subViews (see View|addSubView:) and
	translate aView so that aPoint1 coincides with aPoint2. It is typically used to
	build up a hierarchy of Views (a structured picture). Normally, aPoint1 is a
	point on aView's viewport (e.g. aView viewport topLeft, etc.), and aPoint2 is
	either an arbitrary point in the receiver's coordinate system or a point on the
	receiver's window (e.g. self window topRight, etc)."

	self addSubView: aSubView.
	aSubView align: aPoint1 with: aPoint2
