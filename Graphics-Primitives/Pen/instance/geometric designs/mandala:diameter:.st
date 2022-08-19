mandala: npoints diameter: d
	"On a circle of diameter d, place n points.  Draw all possible connecting
	lines directly on the display."

	| l points |
	Display white.
	l _ (3.14 * d / npoints) rounded.
	self home; up; turn: -90; go: d // 2; turn: 90; go: 0 - l // 2.
	points _ Array new: npoints.
	1 to: npoints do:
		[:i |
		points at: i put: location.
		self go: l; turn: 360 // npoints].
	self down.
	npoints // 2
		to: 1
		by: -1
		do:
			[:i |
			self color: npoints // 2 - i * 20 \\ 250.
			1 to: npoints do:
				[:j |
				self place: (points at: j).
				self goto: (points at: j + i - 1 \\ npoints + 1)]]
	"
	Pen new mandala: 30 diameter: 400.
	"
