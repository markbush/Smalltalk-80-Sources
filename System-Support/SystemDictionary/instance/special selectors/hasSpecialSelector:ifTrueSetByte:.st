hasSpecialSelector: aLiteral ifTrueSetByte: aBlock
	1 to: self specialSelectorSize do:
		[:index |
		(self specialSelectorAt: index) == aLiteral
			ifTrue: [aBlock value: index + 16rAF. ^true]].
	^false
