update: aSymbol
	| range |
	aSymbol == #pc ifTrue:
		[range _ model pcRange.
		self controller selectAndScrollFrom: range first to: range last].
	super update: aSymbol
