makeStar
	| figure shape pen formRect |
	formRect_ 0@0 extent: 50@50.
	pen _ Pen new.
	pen defaultNib: 2.
	Display fill: formRect mask: Form white.
	pen north; place: formRect center; spiral: 45 angle: 144.
	shape _ Form fromDisplay: formRect.
	pen white; north; place: formRect center; spiral: 30 angle: 144.
	figure _ Form fromDisplay: formRect.
	^ OpaqueForm figure: figure shape: shape
