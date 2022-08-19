displayView
	"This method displays the Form associated with this View according to the rule and mask specifed by this class."

	| oldOffset |
	oldOffset _ displayedForm offset.
	displayedForm offset: 0@0.
	displayedForm
		displayOn: Display
		transformation: self displayTransformation
		clippingBox: self insetDisplayBox
		rule: self rule
		mask: self mask.
	displayedForm offset: oldOffset
