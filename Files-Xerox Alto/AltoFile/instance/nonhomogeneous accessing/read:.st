read: page
	| pn p fp palen oldCursor |
	pn _ page pageNumber.
	pageAddresses isNil
	  ifTrue:
		[pn = 0 ifTrue: [palen _ 0] ifFalse: [^nil]]
	  ifFalse:
		[palen _ pageAddresses size].

	fp _ palen min: pn.
	"set address of first page. next addresses are set later"
	page address: (fp = 0
					ifTrue: [leader]
					ifFalse: [pageAddresses at: fp]).

	oldCursor _ Cursor currentCursor.
	pn-fp > 10 ifTrue: [Cursor wait show]. "this may take a while..."

	fp to: pn do:
		[:p | "set up page for checking"
		page pageNumber: p.
		"set by machine code:
			page headerWordAt: Nextp put:
				(p < palen ifTrue: [pageAddresses at: (p+1)] ifFalse: [0]).
			page headerWordAt: backp put:
				(p=0 ifTrue: [0] ifFalse: [p=1 ifTrue: [leader]
					ifFalse: [pageAddresses at: (p-1)]]).
			page size: (p < palen ifTrue: [page dataSize] ifFalse: [0])."

		page doCommand: CCR error: 'read:'.

		page lastPage
		  ifTrue:
			[lastPageNumber _ p.
			p < pn
				ifTrue: [oldCursor show. ^nil]
				ifFalse: [oldCursor show. ^page]].

		(pageAddresses ~~ nil and: [p >= palen])
			ifTrue: ["save address of next page if there is a page address table
				and address not already stored"
				pageAddresses addLast: (page headerWordAt: Nextp)].
		p < pn
			ifTrue: ["set address of next page"
				page address: (page headerWordAt: Nextp)]].
	oldCursor show.
	^page
