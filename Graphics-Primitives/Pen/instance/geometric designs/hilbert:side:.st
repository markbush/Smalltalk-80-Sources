hilbert: n side: s
	"Draws an nth lever Hilbert curve directly into the display bitmap.  A
	Hilbert curve is a space-filling curve."

	| a m |
	n = 0 ifTrue: [^self turn: 180].
	n > 0
		ifTrue:
			[a _ 90.
			m _ n - 1]
		ifFalse:
			[a _ -90.
			m _ n + 1].
	self turn: a.
	self hilbert: 0 - m side: s.
	self turn: a; go: s.
	self hilbert: m side: s.
	self turn: 0 - a; go: s; turn: 0 - a.
	self hilbert: m side: s.
	self go: s; turn: a.
	self hilbert: 0 - m side: s.
	self turn: a
	"
	(Pen new) hilbert: 3 side: 8.
	(Pen new sourceForm: Cursor wait) combinationRule: Form under;
	hilbert: 3 side: 25.
	"
