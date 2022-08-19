asFileStream: aStream
	"Initialize aStream (typically a FileStream) to access the data portion of the receiver
	-- this is the normal way to access characters and words.
	Pages which segment data and header can do this differently."

	| offset len sourceData destData |
	len _ self size.
	offset _ self headerSize.
	sourceData _ self dataString.
	binary
		ifTrue: [^aStream
					on: sourceData
					from: offset + 1
					to: offset + len"self dataBeginning"
					"self dataEnd"].
	destData _ String new: self dataSize.
	destData replaceFrom: 1 to: len withByteArray: sourceData startingAt: offset+1.
	^aStream on: destData from: 1 to: len
