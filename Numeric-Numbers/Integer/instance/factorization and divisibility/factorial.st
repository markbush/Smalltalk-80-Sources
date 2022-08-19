factorial
	"Answer the factorial of the receiver.  For example, 6 factorial == 6*5*4*3*2*1.
	Signal an error if the receiver is less than 0."

	self > 0
		ifTrue: [^self * (self - 1) factorial].
	self = 0
		ifTrue: [^1].
	self error: 'factorial invalid for: ' , self printString
