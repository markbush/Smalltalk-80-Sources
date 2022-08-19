revertBlock
	"If the selected context is a block, then revert to its home."
	(context isKindOf: MethodContext) ifFalse:
			[(self confirm:
'I will have to revert to the method from
which this block originated.  Is that OK?')
				ifTrue: [self context: context home. ^ true]
				ifFalse: [^ false]].
	^ true
