addFirst: aLink
	"Add aLink to the beginning of the receiver's list."

	self isEmpty ifTrue: [lastLink _ aLink].
	aLink nextLink: firstLink.
	firstLink _ aLink.
	^aLink
