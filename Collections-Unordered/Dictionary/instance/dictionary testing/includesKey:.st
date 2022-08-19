includesKey: key
	"Answer whether the receiver has a key equal to the argument, key."

	| index |
	index _ self findKeyOrNil: key.
	^(self basicAt: index) ~~ nil
