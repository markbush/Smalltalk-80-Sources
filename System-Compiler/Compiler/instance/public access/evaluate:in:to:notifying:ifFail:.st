evaluate: textOrStream in: aContext to: receiver notifying: aRequestor ifFail: failBlock
	"Compiles the sourceStream into a parse tree, then generates code into a method.
	This method is then installed in the receiver's class so that it can be invoked.
	In other words, if receiver is not nil, then the text can refer to instance variables
	of that receiver (the Inspector uses this).  If aContext is not nil, the text can refer to
	temporaries in that context (the Debugger uses this).  If aRequestor is not nil, then
	it will receive a notify:at: message before the attempt to evaluate is aborted.

	Finally, the compiled method is invoked from here as DoIt or
	(in the case of evaluation in aContext) DoItIn:.

	The method is subsequently removed from the class, but this will not get done
	if the invocation causes an error which is terminated.  Such garbage can be
	removed by executing:
		Smalltalk allBehaviorsDo:
			[:cl | cl removeSelector: #DoIt; removeSelector: #DoItIn:]."

	| methodNode method value |
	Cursor execute show.
	class _ (aContext == nil ifTrue: [receiver] ifFalse: [aContext receiver]) class.
	self from: textOrStream class: class context: aContext notifying: aRequestor.
	methodNode _ self translate: sourceStream noPattern: true ifFail:
		[^failBlock value].
	method _ methodNode generate: #(0 0 0).
	context == nil
			ifTrue: [class addSelector: #DoIt withMethod: method.
					value _ receiver DoIt.
					class removeSelectorSimply: #DoIt.
					Cursor normal show.
					^value]
			ifFalse: [class addSelector: #DoItIn: withMethod: method.
					value _ receiver DoItIn: context.
					class removeSelectorSimply: #DoItIn:.
					Cursor normal show.
					^value]
