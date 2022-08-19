hasRemoved: index
	^index > 0 and: [index <= list size and: [removed includes: (list at: index)]]
