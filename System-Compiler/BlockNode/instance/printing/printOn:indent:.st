printOn: aStream indent: level
	statements size <= 1 ifFalse: [aStream crtab: level].
	aStream nextPut: $[.
	self printArgumentsOn: aStream indent: level.
	self printStatementsOn: aStream indent: level.
	aStream nextPut: $]
