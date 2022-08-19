showingField: index
	^index <= fieldList size and: [(fieldList at: index) notNil]
