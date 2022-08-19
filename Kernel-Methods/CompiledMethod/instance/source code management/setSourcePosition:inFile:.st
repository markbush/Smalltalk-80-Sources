setSourcePosition: position inFile: fileIndex
	"Store the location of the source code for the receiver in the receiver.  The
	location consists of which source file (*.sources or *.changes) and the position
	in that file."

	| index hiByte middleByte lowByte |
	"set last three bytes to be position in file (1-4)"
	fileIndex > 4 ifTrue: [^self error: 'invalid file number'].
	index _ self size - 2.
	middleByte _ position bitShift: -8.
	hiByte _ middleByte bitShift: -8.
	middleByte _ middleByte bitAnd: 255.
	lowByte _ position bitAnd: 255.
	hiByte > 62 ifTrue: [Transcript show: 'Source file is getting full!!'; cr].
	self at: index + 2 put: fileIndex - 1 * 64 + hiByte.
	self at: index + 1 put: middleByte.
	self at: index put: lowByte
