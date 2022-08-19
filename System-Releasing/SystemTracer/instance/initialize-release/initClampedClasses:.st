initClampedClasses: classSet
	| x |
	classSet isEmpty
		ifTrue: [^self].
	classSet do:
		[:class |
		self clamp: class].
	Smalltalk allBehaviorsDo:
		[:class |
		class superclass == nil &
			((writeDict at: class) ~= #writeClamped:)
		ifTrue: [class == Object
					ifFalse: [self error: class name , 'superclass is clamped!!!!']]].
	SystemOrganization removeEmptyCategories.
	Smalltalk newClassNames; noChanges.
	Browser allInstancesDo: [:x | x updateCategories].
	Smalltalk newSourceFile: 'Smalltalk80' without: classSet
