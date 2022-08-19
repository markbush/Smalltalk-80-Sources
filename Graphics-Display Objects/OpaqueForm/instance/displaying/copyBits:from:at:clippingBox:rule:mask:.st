copyBits: copyRect from: sourceForm at: destPoint clippingBox: clipRect rule: rule mask: mask
	| sourceFigure sourceShape |
	(sourceForm isMemberOf: OpaqueForm)
		ifTrue:
			[sourceFigure _ sourceForm figure.
			sourceShape _ sourceForm shape]
		ifFalse: [sourceFigure _ sourceShape _ sourceForm].
	figure copyBits: copyRect
		from: sourceFigure
		at: destPoint
		clippingBox: clipRect
		rule: rule
		mask: mask.
	shape copyBits: copyRect
		from: sourceShape
		at: destPoint
		clippingBox: clipRect
		rule: rule
		mask: mask
