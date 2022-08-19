deEmphasizeView
	| newForm |
	complemented
		ifTrue: [self highlight.
				newForm _ Form fromDisplay: self insetDisplayBox.
				newForm
					displayOn: Display
					at: (self insetDisplayBox topLeft + (1@0))
					clippingBox: self insetDisplayBox
					rule: Form under
					mask: Form black.
				Display fill: self insetDisplayBox rule: Form under mask: Form lightGray]
