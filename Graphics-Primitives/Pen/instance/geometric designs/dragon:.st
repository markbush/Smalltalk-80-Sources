dragon: order
	"Draws a dragon curve of order order in the center of the screen.  Writes
	directly into the display bitmap."

	order = 0
		ifTrue: [self go: 10]
		ifFalse: [order > 0
				ifTrue: [self dragon: order - 1; turn: 90; dragon: 1 - order]
				ifFalse: [self dragon: -1 - order; turn: -90; dragon: 1 + order]]
	"
	Pen new dragon: 8.
	"
