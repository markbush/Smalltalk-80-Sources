push: n
	(position _ position + n) > length
		ifTrue: [length _ position]
