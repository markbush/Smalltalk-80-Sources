dotOfSize: diameter
	"Create a form which contains a round black dot."

	| radius form bite circle |
	radius _ diameter//2.
	form _ Form new extent: diameter@diameter offset: (0@0) - (radius@radius).
	diameter <= 9 ifTrue: "special case for speed"
		[form black.
		diameter <= 2 ifTrue: [^form].
		bite _ diameter//3.
		form white: (0@0 extent: bite@1).
		form white: (0@(diameter-1) extent: bite@1).
		form white: (diameter-bite@0 extent: bite@1).
		form white: (diameter-bite@(diameter-1) extent: bite@1).
		form white: (0@0 extent: 1@bite).
		form white: (0@(diameter-bite) extent: 1@bite).
		form white: (diameter-1@0 extent: 1@bite).
		form white: (diameter-1@(diameter-bite) extent: 1@bite).
		^form].

	radius _ diameter-1//2.  "so circle fits entirely"
	(Circle new center: radius@radius radius: radius) displayOn: form.
	form convexShapeFill: Form black.	"fill the circle with black"
	^form

	"(Form dotOfSize: 8) displayAt: Sensor cursorPoint"
