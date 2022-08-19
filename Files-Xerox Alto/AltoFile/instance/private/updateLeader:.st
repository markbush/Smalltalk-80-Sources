updateLeader: page
	"see <Alto>AltoFileSys.D, (p.3 leader page) for further info"

	| aFileStream time lastwrite |
	page binary.
	aFileStream _ page asFileStream: ExternalStream new.
	time _ Time timeWords.
	(readWrite bitAnd: Write) = Write
		ifTrue:
			[fileDirectory flush.
			"set creation/write/read date and file name"
			writeTime _ time.
			aFileStream nextPutAll: time.
			aFileStream nextPutAll: time.
			aFileStream nextPutAll: time.
			fileName isEmpty
				ifFalse:
					[aFileStream nextPut: fileName size.
					fileName do: [:char | aFileStream nextPut: char asciiValue]]]
		ifFalse:
			["skip creation, remember write, update read date"
			aFileStream skip: 4.
			writeTime _ aFileStream next: 4.
			aFileStream nextPutAll: time].
	page fromFileStream: aFileStream.
	self write: page
