emitForEffect: stack on: strm
	special > 0
		ifTrue:
			[self perform: (MacroEmitters at: special) with: stack with: strm with: false.
			pc _ 0]
		ifFalse:
			[super emitForEffect: stack on: strm.
			pc _ strm position]
