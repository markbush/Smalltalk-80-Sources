addLast: aLink
	"Add aLink to the end of the receiver's list."

	self isEmpty
		ifTrue: [firstLink _ aLink]
		ifFalse: [lastLink nextLink: aLink].
	lastLink _ aLink.
	^aLink
