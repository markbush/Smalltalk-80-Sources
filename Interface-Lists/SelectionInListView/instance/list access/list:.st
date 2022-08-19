list: anArray
	| item |
	itemList _ anArray.
	anArray == nil ifTrue:
		[isEmpty _ true.
		selection _ 0.
		^self changeModelSelection: 0].
	printItems
		ifTrue: [super list: (anArray collect:
					[:each | each printString copyUpTo: Character cr])]
		ifFalse: [super list: anArray].
	item _ self initialSelection.
	selection _ item == nil
			ifTrue: [0]
			ifFalse: [itemList findFirst: [:x | x = item]].
	selection > 0 ifTrue: [self positionList].
	self changeModelSelection: selection
