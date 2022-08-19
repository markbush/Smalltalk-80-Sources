position: objpos size: size
	"set the current character position and the current page
	from the position of an object of a given size (see positionSize:)"

	| len pn c pos newSize |
	len _ page dataSize.
	newSize _ size. "this may change at end of page"
	size = len
		ifTrue:
			["page size"
			pn _ objpos + 1.
			c _ 0]
		ifFalse:
			[pos _ objpos.
			size = 1 ifFalse: [len \\ size = 0
					ifTrue: ["page length is a multiple of size"
						len _ len // size]
					ifFalse:
						[pos _ objpos * size.
						newSize _ 1]].
			"obtain quotient (page) and remainder (position)"
			pn _ 1 + (pos // len).
			c _ newSize * (pos \\ len)].
	(self positionPage: pn character: c) ifTrue: [^objpos].
	self error: 'cannot read page ' , pn printString
