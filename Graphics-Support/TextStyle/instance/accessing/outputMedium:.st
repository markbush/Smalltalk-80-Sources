outputMedium: aSymbol
	"Set the outputMedium for this style -- currently only Display"
	outputMedium _ aSymbol.
	outputMedium = #Display
		ifTrue:	[lineGrid _ DefaultLineGrid.
				baseline _ DefaultBaseline]
		ifFalse:	[self outputMedium: #Display].
