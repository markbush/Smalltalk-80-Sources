at: index setRunOffsetAndValue: aBlock
	"Supply all run information to aBlock."

	| run limit position |
	" Tolerates index=0 and index=size+1 for copyReplace:"
	run _ 1.
	limit _ runs size.
	position _ index.
	[run <= limit and: [position > (runs at: run)]]
		whileTrue:
			[position _ position - (runs at: run).
			run _ run + 1].
	run > limit
		ifTrue:
			["adjustment for size+1"
			run _ run - 1.
			position _ position + (runs at: run)].
	^aBlock
		value: run	"an index into runs and values"
		value: position - 1	"zero-based offset from beginning of this run"
		value: (values at: run)	"value for this run"
