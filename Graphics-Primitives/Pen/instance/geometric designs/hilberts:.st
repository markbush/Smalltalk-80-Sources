hilberts: n
	"Demonstrates the space-filling nature of Hilbert curves by drawing n
	levers of nested curves on the screen."

	| s |
	self up; go: 128; down.
	1 to: n do:
		[:i |
		s _ 256 bitShift: 0 - i.
		self color: n - i * 40.
		self defaultNib: n - i + 1.
		self up; go: 0 - s // 2; turn: -90; go: s // 2; turn: 90; down.
		self hilbert: i side: s.
		self go: s.
		self hilbert: i side: s.
		self go: s]
	"
	Display white.  Pen new hilberts: 4.
	"
