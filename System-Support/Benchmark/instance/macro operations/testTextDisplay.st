testTextDisplay
	| para |
	para _ Paragraph withText: self textForDisplay.
	para displayAt: 200@200.
	self test: [para displayAt: 200@200]
		labeled: 'display text' repeated: 10

	"Benchmark new testTextDisplay"
