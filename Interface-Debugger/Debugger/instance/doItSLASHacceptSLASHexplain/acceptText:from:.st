acceptText: aText from: aController
	"Recompile the method of the selected context."
	| newSelector classOfMethod newMethod |
	context == nil ifTrue: [^ false].
	self revertBlock ifFalse: [^ false].
	classOfMethod _ context mclass.
	newSelector _ classOfMethod parserClass new parseSelector: aText.
	newSelector ~~ selector
		ifTrue: [self notify: 'selector must not change'].
	Cursor execute showWhile:
		[newSelector _ classOfMethod
				compile: aText
				classified: ClassOrganizer defaultProtocol
				notifying: aController].
	newSelector == nil ifTrue: [^ false].
	Cursor execute showWhile:
		["**have to handle newMethod needing big stack!"
		newMethod _ classOfMethod compiledMethodAt: newSelector.
		sourceCode _ aText string.
		newMethod isQuick
			ifTrue:  "If compiled quick, we need a non-quick version to put in the context."
				[newMethod _ (classOfMethod compilerClass new
							parse: sourceCode in: classOfMethod notifying: nil) generateNoQuick].
		newMethod frameSize > context size
			ifTrue:  "This could be handled by allocating another bigger context,
					but you would have to inform processHandle of change in stack."
				[self notify: 'The new method requires more frame space than the old.
You MUST not restart or proceed in this context.
Other debugging, and restarting other methods is OK.
You may proceed from this notification'].
		context restartWith: newMethod.
		self computeSourceMap.  "Should get cached in CompiledMethod-class like tempNames"
		self resetContext: context].
	^ true
