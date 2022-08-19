testTextFormatting
	| aString aView contents |
	aString _ self stringForDisplay.
	aView _ StringHolderView container: StringHolder new.
	aView window: Display boundingBox viewport: (100@100 extent: 200@200).
	self test:
			[aView editString: (aString asText makeSelectorBoldIn: Benchmark) asParagraph]
		labeled: 'format a bunch of text' repeated: 5.
	aView release

	"Benchmark new testTextFormatting"
