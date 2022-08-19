sizeForEffect: encoder
	special > 0
		ifTrue: [^self perform: (MacroSizers at: special) with: encoder with: false].
	^super sizeForEffect: encoder
