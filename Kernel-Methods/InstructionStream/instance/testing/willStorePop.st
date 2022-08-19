willStorePop
	"Answer whether the next bytecode is a store-pop."

	| byte |
	byte _ self method at: pc.
	^byte = 130 or: [byte between: 96 and: 111]
