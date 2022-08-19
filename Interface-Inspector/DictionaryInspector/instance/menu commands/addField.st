addField
	| aString key |
	aString _ Browser new prompt: 'Enter key as a Smalltalk constant' initially: ''.
	aString isEmpty ifTrue: [^ self].
	ok _ true.
	key _ Compiler evaluate: aString for: nil notifying: self logged: false.
	ok ifFalse: [^nil].
	object add: (Association key: key value: nil).
	field _ key.
	self changed: #field
