asObject
	"This is the inverse of Object.asOop; look there for details.
	Only Stretch should encounter this code."
	self >= -16384
		ifTrue:
			[self even
				ifTrue: [^ self // 2]         "even --> negative"
				ifFalse: [^ (self+1) // -2]]  "odd --> positive"
		ifFalse:
			[^ #NonExistentObject]
