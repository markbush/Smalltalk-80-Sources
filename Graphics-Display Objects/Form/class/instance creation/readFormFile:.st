readFormFile: file
	"Answer an instance of me with bitmap initialized from the external file.  The file format is:  fileCode(1), extent, offset, bits."

	| newForm newWidth newHeight theBits filePosition offsetX offsetY |
	file readOnly; binary.
	file nextWord = 1 ifFalse: [^(Form new extent: 8 @ 8) black].	"reads fileCode"
	newForm _ self new.
	newWidth _ file nextWord.
	newHeight _ file nextWord.
	newForm extent: newWidth @ newHeight.
	offsetX  _ file nextWord.
	offsetY _ file nextWord.
	offsetX > 32767 ifTrue: [offsetX _ offsetX - 65536]. "stored two's-complement"
	offsetY > 32767 ifTrue: [offsetY _ offsetY - 65536]. "stored two's-complement"
	newForm offset: offsetX @ offsetY.
	theBits _ WordArray new: newWidth + 15 // 16 * newHeight.
	filePosition _ 0.
	1 to: newWidth + 15 // 16 do:
		[:j |
		1 to: newHeight do:
			[:i | theBits at: (filePosition _ filePosition + 1) put: file nextWord]].
	newForm bits: theBits.
	file close.
	^newForm
