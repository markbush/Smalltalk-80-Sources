copyFrom: start to: stop
	"Answer with a copied subrange of this text"

	| realStart realStop |
	stop > self size
		ifTrue: [realStop _ self size]		"handle selection at end of string"
		ifFalse: [realStop _ stop].
	start < 1
		ifTrue: [realStart _ 1]			"handle selection before start of string"
		ifFalse: [realStart _ start].
	^Text
		string: (string copyFrom: realStart to: realStop)
		runs: (runs copyFrom: realStart to: realStop)
