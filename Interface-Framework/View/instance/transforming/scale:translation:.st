scale: aScale translation: aTranslation
	"The x component of aScale (a Point) specifies the scale (translation) in the
	x direction; the y component specifies the scale (translation) in the y direction.
	aScale can optionally be an instance of Integer or Float in order to specify uniform
	scaling in both directions.

	Create a new local transformation for the receiver with a scale factor of aScale and
	a translation offset of aTranslation. When the transformation is applied (see
	View|transform:), the scale is applied first, followed by the translation. It is
	typically used when building a superView from its subViews in order to line
	up the viewports of the subViews in the desired way. If no scaling is required
	between subView and superView, then View|align:with: is often more
	convenient to use."

	self setTransformation:
		(WindowingTransformation scale: aScale translation: aTranslation)
