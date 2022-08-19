addFieldIndexTo: set
	"If this instruction is an instVar reference, add its index (offset+1) to set."
	| byte byte2 |
	byte _ self method at: pc.
	byte < 16 ifTrue: [^ set add: byte + 1].  "load field"
	(byte >= 96 and: [byte <= 130]) ifTrue:
		[(byte between: 96 and: 103) ifTrue:  "short store-pop"
			[^ set add: byte - 96 + 1].
		(byte between: 128 and: 130) ifTrue:  "extended field access"
			[byte2 _ self method at: pc+1.
			byte2 < 64 ifTrue: [^ set add: byte2 \\ 64 + 1]]]
