instanceCountsAndSpaceDo: aBlock
	"Evaluate aBlock value: class value: instanceCount value: totalSpace
	for every class in the system."

	| nwords isBytes n |
	Smalltalk
		allClassesDo:
			[:class |
			nwords _ 0.
			class isVariable
				ifTrue:
					[n _ 0.
					isBytes _ class isBytes.
					class
						allInstancesDo:
							[:inst |
							n _ n + 1.
							nwords _ nwords + (isBytes
											ifTrue: [inst basicSize + 1 // 2]
											ifFalse: [inst basicSize])]]
				ifFalse: [n _ class instanceCount].
			nwords _ nwords + (class instSize + 2 * n).  "+2 for header"
			aBlock
				value: class
				value: n
				value: nwords]
