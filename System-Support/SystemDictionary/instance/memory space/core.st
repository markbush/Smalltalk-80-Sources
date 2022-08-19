core
	"Answer an Array containing the number of objects in the system and the number
	of words they occupy.
			Smalltalk core"

	| n nobjects nwords isBytes name |
	nobjects _ nwords _ 0.
	Smalltalk allBehaviorsDo:
		[:class |
		class isVariable
			ifTrue:
				[n _ 0.
				isBytes _ class isBytes.
				class allInstancesDo:
					[:inst |
					n _ n + 1.
					nwords _
						nwords + (isBytes
									ifTrue: [inst basicSize + 1 // 2]
									ifFalse: [inst basicSize])]]
			ifFalse:
				[n _ class isMeta
						ifTrue: ["quicker" 1]
						ifFalse: [class instanceCount]].
		nobjects _ nobjects + n.
		nwords _ nwords + (class instSize + 2 * n) "+2 for header"].
	^Array with: nobjects with: nwords
