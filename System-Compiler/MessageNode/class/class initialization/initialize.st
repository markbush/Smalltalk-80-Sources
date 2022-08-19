initialize
	"MessageNode initialize."

	MacroSelectors _
		#(ifTrue: ifFalse: ifTrue:ifFalse: ifFalse:ifTrue:
			and: or: whileFalse: whileTrue: ).
	MacroTransformers _
		#(transformIfTrue: transformIfFalse: transformIfTrueIfFalse:
			transformIfFalseIfTrue: transformAnd: transformOr:
			transformWhile: transformWhile: ).
	MacroEmitters _
		#(emitIf:on:value: emitIf:on:value: emitIf:on:value: emitIf:on:value:
			emitIf:on:value: emitIf:on:value: emitWhile:on:value: emitWhile:on:value: ).
	MacroSizers _
		#(sizeIf:value: sizeIf:value: sizeIf:value: sizeIf:value: sizeIf:value:
			sizeIf:value: sizeWhile:value: sizeWhile:value: )
