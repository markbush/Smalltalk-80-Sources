readOrAdd: aPage
	| page p pn |
	page _ aPage.
	pn _ page pageNumber.
	(self read: page) notNil ifTrue: [^page].
	"page now contains last page"
	(lastPageNumber to: pn - 1) do:
		[:p |
		page pageNumber: p.
		page size: page dataSize.
		"this writes current and allocates next (empty) page"
		page _ self write: page].
	^page
