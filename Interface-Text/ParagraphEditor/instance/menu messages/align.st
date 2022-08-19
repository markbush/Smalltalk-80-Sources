align
	"Align text according to the next greater alignment value--cycling among
	left flush, right flush, center, justified."

	self deselect.
	paragraph toggleAlignment.
	paragraph displayOn: Display.
	startBlock _ paragraph characterBlockForIndex: startBlock stringIndex.
	stopBlock _ paragraph characterBlockForIndex: stopBlock stringIndex.
	self select
