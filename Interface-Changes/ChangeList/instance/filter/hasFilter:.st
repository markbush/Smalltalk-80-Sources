hasFilter: index
	^index <= filterList size and: [(filterList at: index) notNil]
