do: aBlock
	| aValue |
	aValue _ start.
	step < 0
		ifTrue: [[stop <= aValue]
				whileTrue:
					[aBlock value: aValue.
					aValue _ aValue + step]]
		ifFalse: [[stop >= aValue]
				whileTrue:
					[aBlock value: aValue.
					aValue _ aValue + step]]
