inspect: anObject
	anObject == object ifTrue: [^ self update].
	object _ anObject.
	self changed: #field
