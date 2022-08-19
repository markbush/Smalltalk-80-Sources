rubberBandFrom: startPoint until: aBlock
	"Show an xor line from startPoint to the cursor point until aBlock evaluates to true, then remove the line and answer the endPoint."

	| line endPoint |
	line _ Line from: startPoint to: startPoint withForm: form.
	line displayOn: Display at: 0@0 clippingBox: view insetDisplayBox
		rule: Form reverse mask: nil.		"display"
	[aBlock value] whileFalse:
		[(endPoint _ self cursorPoint) = line endPoint ifFalse:
			[line displayOn: Display at: 0@0 clippingBox: view insetDisplayBox
				rule: Form reverse mask: nil.		"erase"
			line endPoint: endPoint.
			line displayOn: Display at: 0@0 clippingBox: view insetDisplayBox
				rule: Form reverse mask: nil.		"display"
			]].
	line displayOn: Display at: 0@0 clippingBox: view insetDisplayBox
		rule: Form reverse mask: nil.		"erase"
	^line endPoint
