defaultSelectorForMethod: aMethod
	"Given a method, invent an appropriate selector, that is, one that will parse with
	the correct number of arguments."

	| aStream |
	aStream _ WriteStream on: (String new: 16).
	aStream nextPutAll: 'unboundMethod'.
	1 to: aMethod numArgs do: [:i | aStream nextPutAll: 'with:'].
	^aStream contents asSymbol
