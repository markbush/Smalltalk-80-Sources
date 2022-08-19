unref: obj
	| oop refct |
	(obj isMemberOf: SmallInteger) ifTrue: [^self].
	oop _ self oopOf: obj.
	(refct _ refcts at: oop) = OVref ifTrue: [^self].
	refct = 1 ifTrue: [self error: 'deleting last ref'].
	refcts at: oop put: refct - 1
