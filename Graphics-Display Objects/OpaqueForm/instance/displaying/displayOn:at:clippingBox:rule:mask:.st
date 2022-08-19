displayOn: aDisplayMedium at: aDisplayPoint clippingBox: clipRectangle rule: ruleInteger mask: aForm
	"This is the real display message, but it doesn't get used until the new display protocol is installed."
	shape displayOn: aDisplayMedium at: aDisplayPoint clippingBox: clipRectangle rule: Form erase mask: nil.
	figure displayOn: aDisplayMedium at: aDisplayPoint clippingBox: clipRectangle rule: Form under mask: aForm
