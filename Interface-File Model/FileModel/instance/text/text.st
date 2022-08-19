text
	| dir localName |
	fileName == nil ifTrue: [^nil].
	dir _ FileDirectory directoryFromName: fileName setFileName: [:localName].
	(dir includesKey: localName) ifFalse:		"don't create file"
		[^'-new file-' asText emphasizeFrom: 2 to: 9 with: 3].
	^Cursor read showWhile:
		[(FileStream oldFileNamed: fileName) contentsOfEntireFile asText]
