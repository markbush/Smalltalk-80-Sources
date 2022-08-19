explainSpecial: string
	"Answer with a string explaining the code pane selection if it is
	displaying one of the special edit functions."

	| classes whole lits reply |
	(textMode == #classDefinition)
		ifTrue:
			["Selector parts in class definition"
			string last == $: ifFalse: [^nil].
			lits _ Array with: #subclass:instanceVariableNames:classVariableNames:poolDictionaries:category:.
			(whole _ lits detect: [:each | (each keywords
					detect: [:frag | frag = string] ifNone: []) ~~ nil]
						ifNone: []) ~~ nil
				ifTrue: [reply _ '"' , string , ' is one part of the message selector ' , whole , '.']
				ifFalse: [^nil].
			classes _ Smalltalk allClassesImplementing: whole.
			classes _ 'these classes ' , classes printString.
			^reply , '  It is defined in ' , classes , '."
Smalltalk browseAllImplementorsOf: #' , whole].

	textMode == #hierarchy
		ifTrue:
			["Instance variables in subclasses"
			classes _ self selectedClass allSubclasses.
			classes _ classes detect: [:each | (each instVarNames
						detect: [:name | name = string] ifNone: []) ~~ nil]
					ifNone: [^nil].
			classes _ classes printString.
			^'"is an instance variable in class ' , classes , '."
' , classes , ' browseAllAccessesTo: ''' , string , '''.'].
	^nil
