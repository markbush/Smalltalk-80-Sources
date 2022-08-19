do: aBlock
	1 to: self basicSize do:
		[:index |
		(self basicAt: index) == nil ifFalse: [aBlock value: (valueArray at: index)]]
