receiver: rcvr selector: selName arguments: args precedence: p from: encoder
	"compile"

	self receiver: rcvr
		arguments: args
		precedence: p.
	special _  MacroSelectors indexOf: selName.
	(self transform: encoder)
		ifTrue:
			[selector _ SelectorNode new
							key: (MacroSelectors at: special)
							code: #macro]
		ifFalse:
			[selector _ encoder encodeSelector: selName.
			rcvr == NodeSuper ifTrue: [encoder noteSuper]]
