name: newName inEnvironment: environ subclassOf: sup and: others instanceVariableNames: instVarString variable: v words: w pointers: p classVariableNames: classVarString poolDictionaries: poolString category: categoryName comment: commentString changed: changed
	"Create a new metaclass from the information provided in the arguments.
	Create an error if the name does not begin with an uppercase letter or if a
	class of the same name already exists."

	| wasPresent oldClass newClass invalidFields invalidMethods |
	newName first isUppercase
		ifFalse:
			[self error: 'Class names must be capitalized'.
			^false].
	(wasPresent _ environ includesKey: newName)
		ifTrue:
			[oldClass _ environ at: newName.
			(oldClass isKindOf: Behavior)
				ifFalse:
					[self error: newName , ' already exists!  Proceed will store over it'.
					wasPresent _ false.
					oldClass _ self newNamed: newName otherSupers: others]]
		ifFalse: [oldClass _ self newNamed: newName otherSupers: others].
	newClass _ oldClass copy.
	invalidFields _
		changed | (newClass
					subclassOf: sup
					oldClass: oldClass
					instanceVariableNames: instVarString
					variable: v
					words: w
					pointers: p
					ifBad: [^false]).
	invalidFields ifFalse: [newClass obsolete.  newClass _ oldClass].
	invalidMethods _ invalidFields | (newClass declare:  classVarString) | (newClass sharing: poolString).
	commentString == nil ifFalse: [newClass comment: commentString].
	(environ includesKey: newName)
		ifFalse:
			[environ declare: newName from: Undeclared.
			environ at: newName put: newClass].
	SystemOrganization classify: newClass name under: categoryName asSymbol.
	newClass
		validateFrom: oldClass
		in: environ
		instanceVariableNames: invalidFields
		methods: invalidMethods.
	"update subclass lists"
	newClass superclasses do:
		[:sup | sup removeSubclass: oldClass; addSubclass: newClass].
	"Update Changes"
	wasPresent
		ifTrue: [Smalltalk changes changeClass: newClass]
		ifFalse: [Smalltalk changes addClass: newClass].
	"Now check for possible conflicting definitions in superclasses"
	invalidFields ifTrue:
		[newClass copyMethods.
		newClass class copyMethods].
	^newClass
