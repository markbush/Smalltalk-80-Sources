definition
	"Answer a string that defines the receiver."
	| aStream |
	aStream _ WriteStream on: (String new: 300).
	self hasMultipleSuperclasses
		ifTrue:
			[aStream nextPutAll: 'Class named: '.
			self name storeOn: aStream.
			aStream cr; tab; nextPutAll: 'superclasses: '.
			aStream store: self superclassesString.
			aStream cr; tab; nextPutAll: 'instanceVariableNames: '.
			aStream store: self instanceVariablesString.
			aStream cr; tab; nextPutAll: 'classVariableNames: '.
			aStream store: self classVariablesString]
		ifFalse:
			[aStream nextPutAll: (superclass == nil ifTrue: ['nil'] ifFalse: [superclass name]).
			aStream nextPutAll: self kindOfSubclass.
			self name storeOn: aStream.
			aStream cr; tab; nextPutAll: 'instanceVariableNames: '.
			aStream store: self instanceVariablesString.
			aStream cr; tab; nextPutAll: 'classVariableNames: '.
			aStream store: self classVariablesString.
			aStream cr; tab; nextPutAll: 'poolDictionaries: '.
			aStream store: self sharedPoolsString].
	aStream cr; tab; nextPutAll: 'category: '.
	(SystemOrganization categoryOfElement: self name) asString storeOn: aStream.
	^aStream contents
