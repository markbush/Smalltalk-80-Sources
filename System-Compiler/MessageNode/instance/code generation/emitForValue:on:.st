emitForValue: stack on: strm
	| argument |
	special > 0
		ifTrue:
			[self perform: (MacroEmitters at: special) with: stack with: strm with: true.
			pc _ 0]
		ifFalse:
			[receiver ~~ nil ifTrue: [receiver emitForValue: stack on: strm].
			arguments do: [:argument | argument emitForValue: stack on: strm].
			selector
				emit: stack
				args: arguments size
				on: strm
				super: receiver == NodeSuper.
			pc _ strm position]
