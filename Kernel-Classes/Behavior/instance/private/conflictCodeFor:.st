conflictCodeFor: sel  "return some code that indicates a conflicting definition"
	| code parser |
	code _ (self dynamicMethodDescriptionAt: sel) sourceCode.
	(parser _ self parserClass new) parseSelector: code.
	^ (code copyFrom: 1 to: (parser endOfLastToken min: code size)) ,
		(String with: Character cr) ,
		'	^self conflictingInheritanceError'
