text: aString
	| tempStream |
	tempStream _ ReadWriteStream on: (String new: aString size + 20).
	tempStream nextChunkPut: aString.
	tempStream position: 0.  "Needed to set readLimit = writePosition"
	file _ ReadStream on: tempStream contents.
	position _ 0
