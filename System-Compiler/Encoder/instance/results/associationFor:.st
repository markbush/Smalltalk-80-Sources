associationFor: aClass
	| name |
	name _ Smalltalk keyAtValue: aClass ifAbsent: [^Association new value: aClass].
	^Smalltalk associationAt: name
