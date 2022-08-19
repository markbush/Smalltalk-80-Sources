printKeywords: key arguments: args on: aStream indent: level
	| keywords part prev arg indent thisKey |
	args size = 0
		ifTrue: [aStream space; nextPutAll: key. ^self].
	keywords _ key keywords.
	prev _ receiver.
	1 to: args size do:
		[:part | arg _ args at: part.
		thisKey _ keywords at: part.
		(prev isMemberOf: BlockNode)
		 | ((prev isMemberOf: MessageNode) and: [prev precedence >= 3])
		 | ((arg isMemberOf: BlockNode) and: [arg isComplex and: [thisKey ~= #do:]])
		 | (args size > 2)
		 | (key = #ifTrue:ifFalse:)
			ifTrue: [aStream crtab: level+1. indent _ 1] "newline after big args"
			ifFalse: [aStream space. indent _ 0].
		aStream nextPutAll: thisKey; space.
		arg  printOn: aStream indent: level + 1 + indent
			 precedence: (precedence = 2 ifTrue: [1] ifFalse: [precedence]).
		prev _ arg]
