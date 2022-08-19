refctOf: obj
	(obj isMemberOf: SmallInteger) ifTrue: [^0].
	^refcts at: (self oopOf: obj)
