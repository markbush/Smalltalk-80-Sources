rotate2: direction
	"Destructively rotate a square Form of dimension 2^N by 90 degrees.
		direction = 1 for clockwise, -1 for counterclockwise"
	| mask temp all quad delta |
	all _ self boundingBox.
	mask _ Form extent: self extent.
	temp _ Form extent: self extent.
	mask white.   "set up the first mask"
	mask black: (0@0 extent: mask extent//2).
	quad_ self width // 2.
	[quad >= 1] whileTrue:
		[delta _ direction=1 ifTrue: [quad@0] ifFalse: [0@quad].
		temp copy: all from: 0@0 in: mask rule: 3.  "First exchange left and right halves"
		temp copy: (all translateBy: delta transpose) from: 0@0 in: mask rule: 7.
		temp copy: all from: 0@0 in: self rule: 1.
		self copy: all from: 0@0 in: temp rule: 6.
		temp copy: all from: delta in: self rule: 6.
		self copy: all from: delta in: self rule: 7.
		self copy: (all translateBy: delta) from: 0@0 in: temp rule: 6.
		temp copy: all from: 0@0 in: self rule: 3.  "then flip the diagonals"
		temp copy: all from: quad@quad in: self rule: 6.
		temp copy: all from: 0@0 in: mask rule: 1.
		self copy: all from: 0@0 in: temp rule: 6.
		self copy: all from: quad negated@quad negated in: temp rule: 6.
		mask copy: all from: (quad//2)@(quad//2) in: mask rule: 1. "Now refine the mask"
		mask copy: all from: quad negated@0 in: mask rule: 7.
		mask copy: all from: 0@quad negated in: mask rule: 7.
		quad_ quad//2]
"
 [Sensor redButtonPressed] whileFalse:
	[((Form fromDisplay: (Rectangle new origin: Sensor cursorPoint extent: 128@128))
		rotate2: 1)
			displayAt: 0@0].
"
