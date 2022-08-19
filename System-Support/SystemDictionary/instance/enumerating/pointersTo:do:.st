pointersTo: anObject do: aBlock
	"Evaluate the argument aBlock for each pointer to anObject in the system."

	| me class obj method i fixedSize |
	me _ thisContext.
	Smalltalk allBehaviorsDo:
		[:class | class isBits
			ifTrue:
				["Might be CompiledMethod"
				class == CompiledMethod
					ifTrue:
						[class allInstancesDo:
							[:method |
							1 to: method numLiterals + 1 do:
								[:i |
								(method objectAt: i) == anObject
									ifTrue: [aBlock value: method]]]]]
			ifFalse:
				[fixedSize _ class instSize.
				class allInstancesDo:
					[:obj |
					1 to: (fixedSize + obj basicSize) do:
						[:i |
						((obj instVarAt: i) == anObject and: [obj ~~ me])
							ifTrue: [aBlock value: obj]]]]].
	me _ nil "Break cycle"
