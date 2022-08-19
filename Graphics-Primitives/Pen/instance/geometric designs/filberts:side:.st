filberts: n side: s
	"Two Hilbert curve fragments back to back form a Hilbert tile.  Draw four
	interlocking tiles of order n directly on the display.  (Can you fix this algorithm?)"

	| n2 |
	Display white.
	n2 _ 1 bitShift: n - 1.
	self up; go: 0 - n2 * s; down.
	1 to: 4 do:
		[:i |
		self color: i - 1 * 40.
		self
			fillIn:
				[self hilbert: n side: s.
				self go: s.
				self hilbert: n side: s.
				self go: s].
		self black.
		self hilbert: n side: s.
		self go: s.
		self hilbert: n side: s.
		self go: s.
		self up.
		self go: n2 - 1 * s.
		self turn: -90.
		self go: n2 * s.
		self turn: 180.
		self down]
	"
	Pen new filberts: 3 side: 10.
	"
