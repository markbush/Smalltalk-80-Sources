do: aBlock
	tally = 0 ifTrue: [^self].
	1 to: self basicSize do:
		[:index |
		(self basicAt: index) == nil ifFalse: [aBlock value: (self basicAt: index)]]
