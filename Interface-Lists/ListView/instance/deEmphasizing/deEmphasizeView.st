deEmphasizeView
	| aRectangle newForm |
	self deselect.
	selection ~= 0
		ifTrue: [aRectangle _ (self selectionBox intersect: self clippingBox).
				aRectangle _ aRectangle insetOriginBy: 0@-1 cornerBy: 0@0.
				newForm _ Form fromDisplay: aRectangle.
				newForm
					displayOn: Display
					at: (aRectangle topLeft + (1@0))
					clippingBox: aRectangle
					rule: Form under
					mask: Form black.
				Display fill: aRectangle rule: Form under mask: Form lightGray]
