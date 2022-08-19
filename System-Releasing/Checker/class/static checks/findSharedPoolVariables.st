findSharedPoolVariables
	"Smalltalk findSharedPoolVariables."

	| aSet duplicates |
	duplicates _ OrderedCollection new.
	Smalltalk allClassesDo:
	[:class |
	class subclasses isEmpty
		ifTrue:
			[aSet _ Set new.
			class allSharedPools do:
				[:pool |
				pool keys do:
					[:key |
					(aSet includes: key)
						ifTrue: [duplicates add: (Association key: key value: class)].
					aSet add: key]]]].
	^duplicates
