allSelect: aBlock
	"Answer a SortedCollection of each method that, when used as the
	block argument to aBlock, gives a true result."

	| aCollection |
	aCollection _ SortedCollection new.
	Cursor execute showWhile:
		[self allBehaviorsDo:
			[:class | class selectors do:
				[:sel | (aBlock value: (class compiledMethodAt: sel))
					ifTrue: [aCollection add: class name , ' ' , sel]]]].
	^aCollection
