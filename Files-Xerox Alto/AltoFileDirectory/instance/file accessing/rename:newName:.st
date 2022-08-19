rename: aFile newName: newFileName
	| holesize pos newFile newName file |
	(self findFileOrHole: (newFile _ self initFileName: newFileName))
		  ifTrue: [^newFile error: 'rename: new name already exists'].

	newName _ newFile fileName.
	"a possible insertion place"
	pos _ dirFile position.

	(self findFileOrHole: (file _ self initFile: aFile))
		ifFalse: [^file error: 'rename: old name does not exist'].

	holesize _ dirFile nextWord bitAnd: Dfmask - 1.
	dirFile skip: -2.
	file fileName: newName.
	(self fileSize: file) "new size of entry" <= holesize
	  ifTrue:
		["new entry will fit in current entry" "read and save entry"
		pos _ dirFile position.
		file _ self next]
	  ifFalse: ["delete and save entry"
		file _ self deleteEntry: file].

	"position to same entry or hole discovered earlier"
	dirFile position: pos.
	file fileName: newName.
	self addEntry: file.
	file readWrite: Write.
	file writeTime isNil
		ifTrue:
			["close file: updating name in leader page"
			file close]
	"otherwise, file is open. defer leader page change until someone closes it"
