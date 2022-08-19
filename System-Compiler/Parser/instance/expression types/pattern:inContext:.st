pattern: fromDoit inContext: ctxt
	"unarySelector | binarySelector arg | keyword arg {keyword arg} =>
	{selector, arguments, precedence}"

	| args selector |
	fromDoit
		ifTrue:
			[ctxt == nil
				ifTrue: [^Array with: #DoIt with: #() with: 1]
				ifFalse: [^Array
							with: #DoItIn:
							with: (Array
									with: (encoder encodeVariable: 'homeContext'))
									with: 3]].
	hereType == #word
		ifTrue: [^Array with: self advance asSymbol with: #() with: 1].
	(hereType == #binary or: [hereType == #verticalBar])
		ifTrue:
			[selector _ self advance asSymbol.
			args _ Array with: (encoder bindTemp: self argumentName).
			^Array with: selector with: args with: 2].
	hereType == #keyword
		ifTrue:
			[selector _ WriteStream on: (String new: 32).
			args _ OrderedCollection new.
			[hereType == #keyword]
				whileTrue:
					[selector nextPutAll: self advance.
					args addLast: (encoder bindTemp: self argumentName)].
			^Array with: selector contents asSymbol with: args with: 3].
	^self expected: 'Message pattern'
