selectedClass
	className == nil ifTrue: [^ nil].
	meta
		ifTrue: [^ (Smalltalk at: className) class]
		ifFalse: [^ Smalltalk at: className]
