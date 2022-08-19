addSelector: selector withMethod: compiledMethod
	"Add the message selector with the corresponding compiled method to the receiver's
	method dictionary."
	| wasThere |
	wasThere _ methodDict includesKey: selector.
	methodDict at: selector put: compiledMethod.
	self flushCache.
	"if the selector is indexed in SelectorsOfConflictMethods or SelectorsOfCopiedMethods,
	 remove it"
	((SelectorsOfConflictMethods at: selector ifAbsent: [Array new]) includes: self)
		ifTrue: [self removeClass: self selector: selector in: SelectorsOfConflictMethods].
	((SelectorsOfCopiedMethods at: selector ifAbsent: [Array new]) includes: self)
		ifTrue: [self removeClass: self selector: selector in: SelectorsOfCopiedMethods].
	wasThere
		ifTrue: [self checkChangeSelector: selector]
		ifFalse: [self subclasses do:
			[:sub | sub checkSuperAddSelector: selector]]
