findKeyOrNil: key
	| location length probe pass |
	length _ self basicSize.
	pass _ 1.
	location _ key hash \\ length + 1.
	[(probe _ self basicAt: location) == nil or: [probe key = key]]
		whileFalse:
			[(location _ location + 1) > length
				ifTrue:
					[location _ 1.
					pass _ pass + 1.
					pass > 2 ifTrue: [^self grow findKeyOrNil: key]]].
	^location
