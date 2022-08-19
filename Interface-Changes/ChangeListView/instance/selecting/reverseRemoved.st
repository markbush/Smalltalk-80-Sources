reverseRemoved
	| box line |
	self selectionInterval do:
		[:index |
		(model hasRemoved: index) ifTrue:
			[box _ self selectionBox: index.
			line _ Rectangle origin: box leftCenter - (0@1) extent: box width @ 2.
			Display reverse: (line intersect: self clippingBox)]]
