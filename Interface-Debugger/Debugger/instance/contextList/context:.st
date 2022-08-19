context: aContext
	| oldContext class |
	oldContext _ context.
	context _ aContext.
	context == nil
		ifTrue:
			[contextInspector inspect: nil.
			receiverInspector inspect: nil.
			self changed: #text.
			^ self].
	class _ context receiver class.
	meta _ class isMeta.
	meta
		ifTrue: [className _ class soleInstance name]
		ifFalse: [className _ class name].
	selector _ context selector.
	(oldContext == nil or: [oldContext method ~~ context method])
		ifTrue:
			[sourceCode _ context sourceCode.
			self computeSourceMap. "will compute tempNames"
			self changed: #text].
	receiverInspector inspect: context receiver.
	contextInspector inspect: context.
	self changed: #pc
