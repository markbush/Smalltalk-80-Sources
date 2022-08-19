named: newClassName superclasses: newSuperNames instanceVariableNames: myInstVarNames classVariableNames: classVarNames category: cat
	| newClass supers firstSuper otherSupers fork |
	"find the superclasses corresponding to the superclass names"
	supers _ self getSuperclasses: newSuperNames.
	supers size=1 ifTrue:
		[^supers first   "if there's only one superclass, just use old code"
			subclass: newClassName
			instanceVariableNames: myInstVarNames
			classVariableNames: classVarNames
			poolDictionaries: ''
			category: cat].
	newClass _ supers first
		subclass: newClassName
		otherSupers: (supers copyFrom: 2 to: supers size)
		instanceVariableNames: myInstVarNames
		classVariableNames: classVarNames
		category: cat.
	^newClass
