fileOutOn: aStream previous: previousChange next: nextChange
	((previousChange isKindOf: MethodDefinitionChange) and: [previousChange className == className and: [previousChange category == category]])
		ifFalse:
			[self fileOutHeaderOn: aStream].
	aStream nextChunkPut: self text.
	((nextChange isKindOf: MethodDefinitionChange) and: [nextChange className == className and: [nextChange category == category]])
		ifFalse:
			[aStream space; nextPut: $!].
	aStream cr; cr
