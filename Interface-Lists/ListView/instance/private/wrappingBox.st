wrappingBox
	| aRectangle |
	aRectangle _ self insetDisplayBox.
	selection = 0
		ifTrue: [^aRectangle topLeft + (4 @ 0) extent: list compositionRectangle extent]
		ifFalse: [^aRectangle left + 4 @
					(aRectangle top -
						(self selectionBoxOffset
							min: ((list height - aRectangle height
									+ list lineGrid truncateTo: list lineGrid)
							max: 0)))
					extent: list compositionRectangle extent]
