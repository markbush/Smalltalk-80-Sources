positionPage: pn character: c
	"normally accessed by position:size:, skip:"

	(self read: pn) notNil
		ifTrue:
			["c assumed between 0 and page dataSize.
			position, readLimit were set in on:"
			position _ position + c.
			(position <= readLimit or: [self writing])
				ifTrue: [^true]
				ifFalse:
					[position _ readLimit.
					^false]]
		ifFalse: [c = 0
				ifTrue: ["try end of previous page"
					^self positionPage: pn - 1 character: page dataSize]
				ifFalse: [^false]]
