refersToLiteral: literal
	"Answer whether the receiver references the argument, literal.
	The last literal, if used for super, will not cause a true answer"

	| flags header numLiteralsPlus1 index |
	"numLiteralsPlus1 _ self numLiterals + 1. -- expanded for speed"
	header _ self objectAt: 1.
	flags _ 	(header bitShift: -12) bitAnd: 7.
	(flags = 6 or: [flags = 5]) ifTrue: [^ false].
	numLiteralsPlus1 _ (header bitAnd: 63) + 1.
	index _ 1.
	[(index _ index + 1) <= numLiteralsPlus1]
		whileTrue:
		[literal == (self objectAt: index)
			ifTrue:
			[index < numLiteralsPlus1 ifTrue: [^ true].
			"slow check for last literal which might just be super"
			^ (literal isMemberOf: Association) not
				or: [(self readsRef: literal) or: [self writesRef: literal]]]].
	^ false
