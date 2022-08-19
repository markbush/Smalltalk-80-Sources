interpretJump
	| t |
	t _ self method at: pc.
	(t between: 144 and: 151) ifTrue:
		[pc _ pc + 1.  ^t - 143].
	(t between: 160 and: 167) ifTrue:
		[pc _ pc + 2.  ^(t - 164) * 256 + (self method at: pc - 1)].
	^nil
