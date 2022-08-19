addFilter: aSymbol
	| value oldFilter |
	value _ filterKey perform: aSymbol.
	filter isNil
		ifTrue: [filter _ [:change | (change perform: aSymbol) = value]]
		ifFalse:
			[oldFilter _ filter.
			filter _ [:change | (oldFilter value: change) and: [(change perform: aSymbol) = value]]]
