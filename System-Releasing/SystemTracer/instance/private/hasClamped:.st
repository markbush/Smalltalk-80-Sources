hasClamped: obj
	obj class == SmallInteger ifTrue: [^false].
	^(refcts at: (self oopOf: obj)) = Clamped
