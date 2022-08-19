explainAnySel: symbol
	"Is this any message selector?"

	| list reply |
	list _ Smalltalk allClassesImplementing: symbol.
	list size = 0 ifTrue: [^nil].
	list size < 12
		ifTrue: [reply _ ' is a message selector which is defined in these classes ' , list printString]
		ifFalse: [reply _ ' is a message selector which is defined in many classes'].
	^'"' , symbol , reply , '."', NewLine, 'Smalltalk browseAllImplementorsOf: #' , symbol
