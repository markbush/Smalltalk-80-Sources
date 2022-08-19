asOop
	"Answer an integer which is unique to me, consistent with Object.asOop.
	See Object.asOop for detailed documentation"
	self >= 0
		ifTrue: [^ 32768 + self]		"0...16K-1 --> 32K...48K-1"
		ifFalse: [^ 65536 + self]		"-16k...-1 --> 48K...64K-1"
