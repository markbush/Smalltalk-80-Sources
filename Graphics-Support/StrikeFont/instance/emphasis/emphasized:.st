emphasized: code
	"Answer a copy of the receiver with emphasis set to code."
	^self copy emphasis: code + emphasis

	"TextStyle default fontAt: 9 put: ((TextStyle default fontAt: 1) emphasized: 4)"
