findFirst: aBlock
	"Return the index of my first element for which aBlock evaluates as true."

	| index |
	index _ 0.
	[(index _ index + 1) <= self size] whileTrue:
		[(aBlock value: (self at: index)) ifTrue: [^index]].
	^ 0
