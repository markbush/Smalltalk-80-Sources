writePointerField: obj
	| oop |
	(obj isMemberOf: SmallInteger)
			ifTrue:
				[file nextPut: ((obj bitShift: -7) bitAnd: 255).
				file nextPut: (obj bitAnd: 127) * 2 + 1]
			ifFalse:
				[oop _ map at: (self oopOf: obj).
				oop = 0 ifTrue: [oop _ NewNil].
				file nextPut: ((oop bitShift: -7) bitAnd: 255).
				file nextPut: (oop bitAnd: 127) * 2 + 0]
