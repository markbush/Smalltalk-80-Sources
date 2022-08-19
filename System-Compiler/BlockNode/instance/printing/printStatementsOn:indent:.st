printStatementsOn: aStream indent: level
	| len shown thisStatement |
	comment == nil
		ifFalse:
			[self printCommentOn: aStream indent: level.
			aStream crtab: level].
	len _ shown _ statements size.
	(level = 1 and: [statements last isReturnSelf])
		ifTrue: [shown _ 1 max: shown - 1]
		ifFalse: [(len = 1 and: [((statements at: 1) == NodeNil) & (arguments size = 0)])
					ifTrue: [shown _ shown - 1]].
	1 to: shown do:
		[:i |
		thisStatement _ statements at: i.
		thisStatement == NodeSelf
			ifFalse:
				[thisStatement printOn: aStream indent: level.
				i < shown ifTrue: [aStream nextPut: $.; crtab: level].
				thisStatement comment size > 0
					ifTrue:
						[i = shown ifTrue: [aStream crtab: level].
						thisStatement printCommentOn: aStream indent: level.
						i < shown ifTrue: [aStream crtab: level]]]]
