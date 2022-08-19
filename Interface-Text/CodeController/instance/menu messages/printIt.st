printIt
	"Evaluate the current selection as an expression.  If successful, insert and
	select the printString of the result of evaluation after the current selection."
	| result |
	result _ self doIt.
	result ~~ #failedDoit
		ifTrue: [self insertAndSelect: result printString at: stopBlock stringIndex]
