scanMethodsClass: class category: category do: aBlock
	| position method selector |
	[file skipSeparators.
	position _ file position.
	(method _ self nextChunkStream) atEnd]
		whileFalse:
			[method _ method contents.
			selector _ Parser new parseSelector: method.
			selector notNil ifTrue:
				[aBlock value: ((MethodDefinitionChange file: file position: position) className: class; selector: selector; category: category)]]
