permutation: permutationBlock for: array
	| len perm key hash |
	"Return an inverse permutation for an array to permute it according to
	the mapped oop values.  The keys in array MUST have been mapped."

	len _ array basicSize.
	perm _ Array new: len.
	1 to: len do:
		[:i | key _ array basicAt: i.
		(key == nil or: [self hasClamped: key])
		  ifFalse:
			[hash _ permutationBlock value: key.
			hash _ hash \\ len + 1.
			[(perm at: hash) == nil]
				whileFalse:
				[hash _ (hash = len ifTrue: [1] ifFalse: [hash + 1])].
			perm at: hash put: i]].
	^perm
