asOopFromIndex: oop
	"Convert from OT index to values returned by asOop"
	oop <= 16383
		ifTrue: [^ oop]
		ifFalse: [^ oop - 32768]
