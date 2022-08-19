outputMedium: aSymbol
	"Set the argument to be the outputMedium for the receiver.
	As of 1/20/80, #Display, #PressPrinter, #DisplayPrinterWidths are the possibilities."
	outputMedium _ aSymbol.
		"Changing the outputMedium means that the text must be recomposed."
	textStyle outputMedium: aSymbol.
	self composeAll
