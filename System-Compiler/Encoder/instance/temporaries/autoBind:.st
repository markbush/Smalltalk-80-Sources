autoBind: name
	"Declare a block argument as a temp if not already declared"

	| node assoc |
	node _
		scopeTable
			at: name
			ifAbsent:
				[(self lookupInPools: name ifFound: [:assoc | assoc])
					ifTrue: [self notify: 'Name already used in a Pool or Global'].
				^self reallyBindTemp: name].
	node isTemp ifFalse: [^self notify: 'Name already used in this class'].
	^node
