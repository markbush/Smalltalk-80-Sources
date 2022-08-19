logChange: aStringOrText
	"Write the argument, a String or Text, onto the changes file."
	| aFileStream aString |
	SourceFiles == nil
		ifTrue: [^self].
	(aString isMemberOf: Text)
		ifTrue: [aString _ aStringOrText string]
		ifFalse: [aString _ aStringOrText].
	(aString isMemberOf: String)
		ifFalse: [self error: 'cant log this change'].
	(aString findFirst: [:char | char isSeparator not]) = 0
		ifTrue: [^self].  "null doits confuse replay"
	aFileStream _ SourceFiles at: 2.
	aFileStream setToEnd; readWrite.
	aFileStream cr; cr; nextChunkPut: aString.
	aFileStream readOnly
