fromFileStream: aStream
	"Copy data into page; pages which separate data and header can do this differently"
	| sourceData destData offset |
	binary
		ifFalse:
			[offset _ self headerSize.
			sourceData _ aStream contents.
			destData _ self dataString.
			destData
				replaceFrom: offset + 1
				to: offset+ self size
				withString: sourceData
				startingAt: 1]
