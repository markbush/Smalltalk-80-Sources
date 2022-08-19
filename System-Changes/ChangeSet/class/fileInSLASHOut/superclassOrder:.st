superclassOrder: classes
	"Arrange the classes in the collection, classes, in superclass order so the classes can be properly filed in."

	| aa bb na nb |
	^classes asSortedCollection: [:a :b |
		"find lengths (na, nb) of superclass chains (a, b)"
		aa _ a. na _ 1.	bb _ b. nb _ 1.
		[(aa _ aa superclass) notNil] whileTrue: [na _ na + 1].
		[(bb _ bb superclass) notNil] whileTrue: [nb _ nb + 1].
		"follow longer chain to same depth as shorter"
		na - nb timesRepeat: [a _ a superclass].
		nb - na timesRepeat: [b _ b superclass].
		"trace back until the chains meet"
		[(aa _ a superclass) ~~ (bb _ b superclass)]
			whileTrue: [a _ aa. b _ bb].
		a == b ifTrue: [na <= nb] "chains overlap--one is sub*-class of other"
			ifFalse: [a name <= b name] "alphabetize at the fork" ]
