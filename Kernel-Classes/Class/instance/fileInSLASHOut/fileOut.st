fileOut
	"Create a file whose name is the name of the receiver with -.st- as the
	extension, and file a description of the receiver onto it"

	| fileStream |
	Transcript refresh; cr; cr; show: 'Filing out class:'.
					fileStream _ Disk file: self name , '.st'.
	fileStream timeStamp.
	self fileOutOn: fileStream
		moveSource: false
		toFile: 0.
	fileStream shorten; close.
	self removeFromChanges.
