drawLine: sourceForm from: beginPoint to: endPoint clippingBox: clipRect rule: anInteger mask: aForm

	| dotSetter |
	"set up an instance of BitBlt for display"
	dotSetter _ BitBlt
		destForm: self
		sourceForm: sourceForm
		halftoneForm: aForm
		combinationRule: anInteger
		destOrigin: beginPoint
		sourceOrigin: 0 @ 0
		extent: sourceForm extent
		clipRect: clipRect.
	dotSetter drawFrom: beginPoint to: endPoint
