spiral: n angle: a
	"Draw a double squiral directly on the display."
	1 to: n do:
		[:i |
		self color: i * 2 \\ 256.
		self go: i; turn: a]
	"
	Display white.  Pen new spiral: 200 angle: 89; home; spiral: 200
		angle: -89.
	"
