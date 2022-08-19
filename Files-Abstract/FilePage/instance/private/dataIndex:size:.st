dataIndex: index size: nBytes
	"Answer with an index offset properly into page, unless index would be
	out of bounds.   nBytes = 1 for characters; nBytes = 2 for words"

	(index > 0 and: [index <= (self size // nBytes)])
		ifTrue: [^(self headerSize // nBytes) + index]
		ifFalse: [self error: 'index out of bounds']
