testTextScanning
	| clipRect para range scanner stops |
	clipRect _ Display boundingBox.
	para _ Paragraph withText: 'Hi there, folks' asText.
	range _ 1 to: para numberOfLines.
	scanner _ DisplayScanner new.
	scanner displayLines: range in: para clippedBy: clipRect.
	stops _ scanner instVarAt: 17.
	self test:
		[scanner destX: 0.
		 scanner
			scanCharactersFrom: 1
			to: 16
			in: 'Hi there, folks!'
			rightX: 400
			stopConditions: stops
			displaying: true]
		labeled: 'scan characters (primitive text display)' repeated: 100

	"Benchmark new testTextScanning"
