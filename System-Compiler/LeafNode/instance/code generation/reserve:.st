reserve: encoder
	"if this is a yet unused literal of type -code, reserve it"

	code < 0 ifTrue: [code _ self code: (encoder litIndex: key) type: 0 - code]
