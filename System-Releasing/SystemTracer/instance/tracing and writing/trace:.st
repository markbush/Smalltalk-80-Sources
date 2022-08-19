trace: obj
	| oop refct |
	(obj isMemberOf: SmallInteger) ifTrue: [^self].
	oop _ self oopOf: obj.
	refct _ refcts at: oop.
	refct >= OVref ifTrue: [^self].
	refct > NoRefs
		ifTrue:
			[refcts at: oop put: refct + 1.
			^self].
	self perform: (writeDict at: obj class)
		with: obj
