tryPrimitiveFor: method receiver: receiver args: arguments
	"Simulate a primitive method, method for the receiver and arguments given
	as arguments to this message.  Answer resuming the context if successful, else
	answer the symbol, #primitiveFail."

	| flag primIndex |
	(method objectAt: 1) > 0 ifTrue: [^#primitiveFail].
	"fast check flags < 4"
	(flag _ method flags) < 5 ifTrue: [^#primitiveFail].
	flag = 5 ifTrue: [^self push: receiver].
	flag = 6 ifTrue: [^self push: (receiver instVarAt: method numTempsField + 1)].
	flag = 7
		ifTrue:
			[(primIndex _ method primitive) = 0 ifTrue: [^#primitiveFail].
			^self doPrimitive: primIndex receiver: receiver args: arguments]
