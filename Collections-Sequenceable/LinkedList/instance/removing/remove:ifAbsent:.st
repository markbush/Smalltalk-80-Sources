remove: aLink ifAbsent: aBlock
	"Remove aLink from the receiver.  If it is not there, answer the result of
	evaluating aBlock."

	| tempLink |
	aLink == firstLink
		ifTrue: [firstLink _ aLink nextLink.
				aLink == lastLink
					ifTrue: [lastLink _ nil]]
		ifFalse: [tempLink _ firstLink.
				[tempLink == nil ifTrue: [^aBlock value].
				 tempLink nextLink == aLink]
					whileFalse: [tempLink _ tempLink nextLink].
				tempLink nextLink: aLink nextLink.
				aLink == lastLink
					ifTrue: [lastLink _ tempLink]].
	aLink nextLink: nil.
	^aLink
