displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle rule: ruleInteger mask: aForm
	"Displays this path, translated and scaled by aTransformation."
	"get the scaled and translated Path."

	| newPath transformedPath |
	transformedPath _ displayTransformation applyTo: self.
	newPath _ Path new.
	transformedPath do: [:point | newPath add: point].
	newPath form: self form.
	newPath
		displayOn: aDisplayMedium
		at: 0 @ 0
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm
