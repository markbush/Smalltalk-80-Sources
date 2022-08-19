sourceMap
	"I am the root of a parse tree; answer with a sorted collection of associations
	of the form: pc (byte offset in me) -> sourceRange (an Interval) in source text.
	Because the number of my literals may grow during generation and therefore
	the pc's may be off, I must pass my generated number of literals to the encoder."
	| numLits |
	numLits _ (self generate: #(0 0 0 )) numLiterals.
	^encoder sourceMap: numLits
