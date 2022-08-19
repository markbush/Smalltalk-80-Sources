blockTo: end
	| exprs block |
	"Decompile a range of code as in statementsTo:, but return a block node"
	exprs _ self statementsTo: end.
	block _ constructor codeBlock: exprs returns: lastReturnPc = lastPc.
	lastReturnPc _ -1.  "So as not to mislead outer calls"
	^block
