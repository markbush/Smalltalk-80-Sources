transform: encoder
	special = 0 ifTrue: [^false].
	(self perform: (MacroTransformers at: special) with: encoder)
		ifTrue:
			[^true]
		ifFalse:
			[special _ 0. ^false]
