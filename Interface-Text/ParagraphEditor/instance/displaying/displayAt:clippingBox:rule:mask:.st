displayAt: aDisplayPoint clippingBox: clipRectangle rule: ruleInteger mask: aForm
	"Redisplay the paragraph starting at aDisplayPoint, clipped by the rectangle,
	clipRectangle.  The characters are displayed with respect to the rule, ruleInteger, and
	the mask, aForm."
	self deselect.
	paragraph
		displayOn: Display
		at: aDisplayPoint
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm.
	self select
