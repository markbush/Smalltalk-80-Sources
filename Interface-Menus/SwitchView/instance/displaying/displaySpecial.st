displaySpecial
	complemented
		ifTrue: [self displaySpecialComplemented].
	label == nil
		ifFalse: [label
					displayOn: Display
					transformation: self displayTransformation
					clippingBox: self insetDisplayBox
					align: label boundingBox center
					with: label boundingBox center
					rule: Form under
					mask: Form black]
