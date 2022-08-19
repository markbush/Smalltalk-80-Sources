inheritsFrom: aClass
	"Answer whether the argument, aClass, is on the receiver's superclass chain."
	self superclasses do:
		[:each | (each==aClass or: [each inheritsFrom: aClass]) ifTrue: [^true]].
	^false
