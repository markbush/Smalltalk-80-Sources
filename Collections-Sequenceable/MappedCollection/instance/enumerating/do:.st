do: aBlock
	map do:
		[:mapValue | aBlock value: (domain at: mapValue)]
