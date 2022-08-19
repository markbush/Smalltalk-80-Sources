printOn: aStream base: b
	| i x |
	(x _ self) < 0
		ifTrue:
			[aStream nextPut: $-.
			x _ self negated].
	i _ 0.
	[x >= b]
		whileTrue:
			[Digitbuffer at: (i _ i + 1) put: x \\ b.
			x _ x // b].
	Digitbuffer at: (i _ i + 1) put: x.
	[i > 0]
		whileTrue:
			[aStream nextPut: (Character digitValue: (Digitbuffer at: i)).
			i _ i - 1]
