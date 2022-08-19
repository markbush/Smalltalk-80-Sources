willSend
	"Answer whether the next bytecode is a message-send."
	| byte |
	byte _ self method at: pc.
	byte < 128 ifTrue: [^ false].
	byte >= 176	"special send or short send"
		ifTrue: [^ byte ~= 200].  "but not blockCopy"
	^ byte between: 131 and: 134	"long sends"
