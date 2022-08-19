findKeyOrNil: key
	| index length probe pass |
	length _ self basicSize.
	pass _ 1.
	index _ key asOop \\ length + 1.
	[(probe _ self basicAt: index) == nil or: [probe == key]]
		whileFalse: [(index _ index + 1) > length
				ifTrue:
					[index _ 1.
					pass _ pass + 1.
					pass > 2 ifTrue: [^self grow findKeyOrNil: key]]].
	^index
