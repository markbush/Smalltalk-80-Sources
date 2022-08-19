new: obj class: class length: length trace: traceBlock write: writeBlock
	| oop objpos endpos |
	oop_ self oopOf: obj.
	(refcts at: oop)=NoRefs ifTrue: "create a new ot entry"
		[map at: oop put: (maxOop_ maxOop+1).
		refcts at: oop put: 1.
		ot nextWordPut: oop.  "save oop; fill in refct in pass2"
		ot nextPut: bank +
			(class  isBits
			ifTrue: [(class isBytes and: [obj size even == false])
						ifTrue: [ODD]  ifFalse: [0]]
			ifFalse: [PTRS]).
		ot nextWordPut: addr.
		addr _ addr + length+2.
		addr >= 65536
			ifTrue:
				[addr _ (addr - 65536) truncated.
				bank _ bank + 1]]
			ifFalse:
				[(map at: oop)>specialObjects size
					ifTrue: [self error: 'double write!']].
	objpos_ file position.
	file skip: length+2*2.
	traceBlock notNil ifTrue: [self trace: class.  traceBlock value].
	endpos_ file position.  file position: objpos.
	self writeBitField: length+2.  self writePointerField: class.  writeBlock value.
	file position: endpos
