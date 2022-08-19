printOn: aStream indent: level
	aStream nextPut: $^.
	expr printOn: aStream indent: level.
	expr printCommentOn: aStream indent: level
