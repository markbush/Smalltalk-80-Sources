asOopToIndex: oop
	"Unscramble asOop values to return OT index in range 1 to 32767."
	oop < 0
		ifTrue: [^ oop + 32768]
		ifFalse: [^ oop]
