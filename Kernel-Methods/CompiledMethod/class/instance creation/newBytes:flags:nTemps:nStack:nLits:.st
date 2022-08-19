newBytes: numberOfBytes flags: flags nTemps: numberTemps nStack: stackSpace nLits: numberLiterals
	"Answer an instance of me.  The header is specified by the message
	arguments.  The remaining parts are not as yet determined."

	| flagBits |
	flags >= 4 ifTrue: [flagBits _ flags - 8]
			ifFalse: [flagBits _ flags].
	"ensure 15-bit integer result"
	^self
		newMethod: numberOfBytes + 3 	"+3 to store source location"
		header: flagBits * 4096 + (numberTemps * 128)
				+ (numberTemps + stackSpace > SmallFrame
						ifTrue: [64]
						ifFalse: [0])
				+ numberLiterals
