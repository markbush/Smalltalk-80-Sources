methodDescriptionAt: selector
	"return a method description for the method for 'selector' "
	| local copied conflict |
	local _ methodDict includesKey: selector.
	copied _ (SelectorsOfCopiedMethods at: selector ifAbsent: [Array new]) includes: self.
	conflict _ (SelectorsOfConflictMethods at: selector ifAbsent: [Array new]) includes: self.
	local & copied not & conflict not
		ifTrue: [^MethodDescription whichClass: self selector: selector].
	^self superMethodDescriptionAt: selector
