explainScan: string
	"remove beginning and trailing space, tab, cr"

	| c beg end |
	beg _ 1.
	end _ string size.

	[beg = end ifTrue: [^string copyFrom: 1 to: 1].
	"if all blank, tell about the first"
	c _ string at: beg.
	c = Character space or: [c = Character tab or: [c = Character cr]]]
		whileTrue: [beg _ beg + 1].

	[c _ string at: end.
	c = Character space or: [c = Character tab or: [c = Character cr]]]
		whileTrue: [end _ end - 1].
	^string copyFrom: beg to: end	"Return purely visible characters"
