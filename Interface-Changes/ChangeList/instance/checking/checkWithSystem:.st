checkWithSystem: aBoolean
	changeDict _ Dictionary new.
	doItDict _ Dictionary new.
	checkSystem _ aBoolean.
	list do: [:change |
		(removed includes: change) ifFalse: [change checkWith: self]]
