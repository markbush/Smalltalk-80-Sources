explainPartSel: string
	"Is this a fragment of a multiple-argument selector sent in this method?"

	| lits frag whole reply classes s |
	selector == nil ifTrue: [^nil].  "not in a message"
	string last == $: ifFalse: [^nil].
	"Name of this method"
	lits _ Array with: selector.
	(whole _ lits detect: [:each | (each keywords detect: [:frag | frag = string]
					ifNone: []) ~~ nil]
				ifNone: []) ~~ nil
		ifTrue: [reply _ ', which is the selector of this very method!'.
			s _ '.  To see the other definitions, go to the message list pane and use yellowbug to select ''implementors''."']
		ifFalse:
			["Selectors called from this method"
			lits _ (class compiledMethodAt: selector) messages.
			(whole _ lits detect: [:each | (each keywords detect: [:frag | frag = string]
							ifNone: []) ~~ nil]
						ifNone: []) ~~ nil
				ifFalse: [string = 'primitive:'
					ifTrue: [^self explainChar: '<']
					ifFalse: [^nil]].
			reply _ '.'.
			s _ '.  To see the definitions, go to the message list pane and use yellowbug to select ''messages''."'].
	classes _ Smalltalk allClassesImplementing: whole.
	classes size > 12
		ifTrue: [classes _ 'many classes']
		ifFalse: [classes _ 'these classes ' , classes printString].
	^ '"' , string , ' is one part of the message selector ' , whole, reply , '  It is defined in ' , classes , s
