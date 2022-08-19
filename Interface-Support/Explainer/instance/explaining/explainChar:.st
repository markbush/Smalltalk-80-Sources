explainChar: string
	"Does string start with a special character?"

	| char |
	char _ string at: 1.
	char = $. ifTrue: [^'"Period marks the end of a Smalltalk statement.  A period in the middle of a number means a decimal point.  (The number is an instance of Float).  A period in the middle of a selector means a compound selector.  (To the left is the superclass, to the right is the selector)."'].
	char = $' ifTrue: [^'"The characters between two single quotes are made into an instance of class String"'].
	char = $" ifTrue: [^'"Double quotes enclose a comment.  Smalltalk ignores everything between double quotes."'].
	char = $# ifTrue: [^'"The characters following a hash mark are made into an instance of class Symbol.  If parenthesis follow a hash mark, an instance of class Array is made."'].
	(char = $( or: [char = $)]) ifTrue: [^'"Expressions enclosed in parenthesis are evaluated first"'].
	(char = $[ or: [char = $]]) ifTrue: [^'"The code inside square brackets is an unevaluated block of code.  It becomes an instance of BlockContext and is usually passed as an argument."'].
	(char = $< or: [char = $>]) ifTrue: [^'"<primitive: xx> means that this method is usually preformed directly by the virtual machine.  If this method is primitive, its Smalltalk code is executed only when the primitive fails."'].
	char = $^ ifTrue: [^'"Uparrow means return from this method.  The value returned is the expression following the ^"'].
	char = $| ifTrue: [^'"Vertical bars enclose the names of the temporary variables used in this method.  In a block, the vertical bar separates the argument names from the rest of the code."'].
	char = $_ ifTrue: [^'"Left arrow means assignment.  The value of the expression after the left arrow is stored into the variable before it."'].
	char = $; ifTrue: [^'"Semicolon means cascading.  The message after the semicolon is sent to the same object which received the message before the semicolon."'].
	char = $: ifTrue: [^'"A colon at the end of a keyword means that an argument is expected to follow.  Methods which take more than one argument have selectors with more than one keyword.  (One keyword, ending with a colon, appears before each argument).', NewLine, NewLine, 'A colon before a variable name just inside a block means that the block takes an agrument.  (When the block is evaluated, the argument will be assigned to the variable whose name appears after the colon)."'].
	char = $$ ifTrue: [^'"The single character following a dollar sign is made into an instance of class Character"'].
	char = $- ifTrue: [^'"A minus sign in front of a number means a negative number."'].
	char = $e ifTrue: [^'"An e in the middle of a number means that the exponent follows."'].
	char = $r ifTrue: [^'"An r in the middle of a bunch of digits is an instance of Integer expressed in a certain radix.  The digits before the r denote the base and the digits after it express a number in that base."'].
	char = Character space ifTrue: [^'"the space Character"'].
	char = Character tab ifTrue: [^'"the tab Character"'].
	char = Character cr ifTrue: [^'"the carriage return Character"'].
	^nil
