stringForDisplay
	^'testTextDisplay
	| clipRect para range scanner |
	clipRect _ Display boundingBox.
	para _ Paragraph withText: self textForDisplay.
	range _ 1 to: para numberOfLines.
	scanner _ DisplayScanner new.
	self test: [scanner
				displayLines: range
				in: para
				clippedBy: clipRect]
		labeled: ''displaying text'' repeated: 10

	"Benchmark new testTextDisplay"'
