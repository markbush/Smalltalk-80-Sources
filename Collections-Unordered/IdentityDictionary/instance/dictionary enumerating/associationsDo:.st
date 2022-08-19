associationsDo: aBlock
	"Evaluate aBlock for associations consisting of my keys and their values."

	1 to: self basicSize do:
		[:index |
		(self basicAt: index) == nil
			ifFalse: [aBlock value: (Association
										key: (self basicAt: index)
										value: (valueArray at: index))]]
