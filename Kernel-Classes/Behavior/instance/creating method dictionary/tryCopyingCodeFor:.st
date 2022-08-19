tryCopyingCodeFor: selector
	"Check if 'selector' is compound, and if so, try to copy down the appropriate code.
	  Return #OK if sucessful,
		#HierarchyViolation if the class part is not one of my immediate superclasses,
		or #NotFound if the class part is OK but the
		selector part is not found in the inheritance hierarchy."
	| classPart whichClass simpleSelector descr |
	selector isCompound ifFalse: [^#NotFound].
	classPart _ selector classPart.
	simpleSelector _ selector selectorPart.
	"check for special class parts"
	classPart==#all ifTrue:
		[self compileBroadcastCodeFor: simpleSelector.
		self insertClass: self selector: simpleSelector in: SelectorsOfDirectedMethods.
		^#OK].
	classPart==#super
		ifTrue: [descr _ self superMethodDescriptionAt: simpleSelector]
		ifFalse: [whichClass _ Smalltalk at: classPart.
				"if I'm a metaclass, get the metaclass of whichClass"
				self isMeta ifTrue: [whichClass _ whichClass class].
				"check that whichClass is one of my superclasses"
				(self inheritsFrom: whichClass) ifFalse: [^#HierarchyViolation].
				descr _ whichClass methodDescriptionAt: simpleSelector].
	descr isBad ifTrue: [^#NotFound].
	self compileUnchecked: classPart , '.' , descr sourceCode.
	self insertClass: self selector: simpleSelector in: SelectorsOfDirectedMethods.
	^#OK
