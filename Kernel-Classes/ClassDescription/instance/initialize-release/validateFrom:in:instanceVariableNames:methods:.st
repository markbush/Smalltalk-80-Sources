validateFrom: oldClass in: environ instanceVariableNames: invalidFields methods: invalidMethods
	"Recompile the receiver, a class, and redefine its subclasses if necessary."

	| sub newSub |
	invalidFields & invalidMethods ifFalse: [^self].
	invalidMethods & self hasMethods
		ifTrue:
			[Transcript show: 'recompiling ' , self name , '...'.
			self compileAllFrom: oldClass.
			Transcript show: ' done'; cr].
	self ~~ oldClass ifTrue: [self updateInstancesFrom: oldClass].
	oldClass subclasses do:
		[:sub |
		newSub _ sub copyForValidation.
		newSub
			subclassOf: self
			oldClass: sub
			instanceVariableNames: sub instVarNames
			variable: sub isVariable
			words: sub isBytes not
			pointers: sub isBits not
			ifBad: [self error: 'terrible problem in recompiling subclasses!'].
		newSub
			validateFrom: sub
			in: environ
			instanceVariableNames: invalidFields
			methods: invalidMethods]
