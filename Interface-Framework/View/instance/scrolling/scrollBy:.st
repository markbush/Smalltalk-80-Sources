scrollBy: aPoint
	"The x component of aPoint specifies the amount of scrolling in the x direction;
	the y component specifies the amount of scrolling in the y direction. The amounts
	are specified in the receiver's local coordinate system.
	Scroll the receiver up or down, left or right. The window of the receiver is kept
	stationary and the subViews and other objects in the receiver are translated
	relative to it. Scrolling doesn't change the insetDisplayBox or the viewport
	since the change in the transformation is canceled by the change in the
	window. In other words, all display objects in the view, except the window,
	are translated by the scrolling operation."

	| aRectangle |
	aRectangle _ insetDisplayBox.
	transformation _ transformation scrollBy: aPoint.
	window _ self getWindow translateBy: aPoint x negated @ aPoint y negated.
	self unlock.
	insetDisplayBox _ aRectangle
