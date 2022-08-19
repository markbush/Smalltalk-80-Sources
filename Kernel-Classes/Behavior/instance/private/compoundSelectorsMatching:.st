compoundSelectorsMatching: simple
	^ self selectors select:
		[:sel | sel isCompound and: [sel selectorPart = simple]]
