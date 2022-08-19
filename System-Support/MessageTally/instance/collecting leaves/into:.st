into: aDictionary
	| aMessageTally index |
	index _
		aDictionary
			find: self
			ifAbsent:
				[aDictionary add:
					(aMessageTally _ MessageTally new class: class method: method).
				^aMessageTally bump: tally].
	(aDictionary basicAt: index) bump: tally
