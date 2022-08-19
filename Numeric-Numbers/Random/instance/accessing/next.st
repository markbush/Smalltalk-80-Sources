next
	"Answer with the next random number."

	| temp |
	[seed _ 13849 + (27181 * seed) bitAnd: 65535.
	0 = (temp _ seed / 65536.0)] whileTrue.
	^temp
