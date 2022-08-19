directoryFromName: fileDesignator setFileName: localNameBlock
	| directory stream |
	"Answer the file directory implied from the designator, presumably at the start of the
	designator, and evaluate the block with the rest of the designator (presumably the
	file name itself."

	directory _ Disk.
	stream _ ReadStream on: fileDesignator.
	localNameBlock value: (stream upTo: nil).
	^directory
