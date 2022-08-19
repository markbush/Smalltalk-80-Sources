nextNumber: n put: v
	"Append to the receiver the argument, v, which is a positive SmallInteger or
	a LargePositiveInteger, as the next n bytes.  Possibly pad with leading zeros."

	| vlen i |
	vlen _ v digitLength.
	n < vlen
		ifTrue: [self error: 'number too big']
		ifFalse: [n > vlen ifTrue: [self next: n - vlen put: 0]].
	"pad beginning with 0's"
	vlen = 1
		ifTrue: [self nextPut: v]
		ifFalse: [(vlen = 2 and: [v isMemberOf: SmallInteger])
				ifTrue: [self nextWordPut: v]
				ifFalse: ["LargeInteger (assume pos, no negative convention)"
					1 to: vlen do: [:i | self nextPut: (v at: vlen + 1 - i)]]]
