displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle align: alignmentPoint with: relativePoint rule: ruleInteger mask: aForm
	"Graphically, it means nothing to scale a Form by floating point values.
	Because scales and other display parameters are kept in floating point to
	minimize round off errors, we are forced in this routine to round off to the
	nearest integer."

	| absolutePoint scale magnifiedForm |
	absolutePoint _ displayTransformation applyTo: relativePoint.
	absolutePoint _ absolutePoint x truncated @ absolutePoint y truncated.
	displayTransformation noScale
		ifTrue: [magnifiedForm _ self]
		ifFalse:
			[scale _ displayTransformation scale.
			scale _ scale x rounded @ scale y rounded.
			(1@1 = scale)
					ifTrue: [scale _ nil. magnifiedForm _ self]
					ifFalse: [magnifiedForm _ self magnifyBy: scale]].
	magnifiedForm
		displayOn: aDisplayMedium
		at: absolutePoint - alignmentPoint
		clippingBox: clipRectangle
		rule: ruleInteger
		mask: aForm
