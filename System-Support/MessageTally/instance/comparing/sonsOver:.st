sonsOver: threshold
	| hereTally last sons |
	(receivers == nil or: [receivers size = 0]) ifTrue: [^#()].
	hereTally _ tally.
	sons _ receivers select:  "subtract subNode tallies for primitive hits here"
		[:son |
		hereTally _ hereTally - son tally.
		son tally > threshold].
	hereTally > threshold
		ifTrue:
			[last _ MessageTally new class: class method: method.
			^sons copyWith: (last primitives: hereTally)].
	^sons
