do: aBlock
	"Sequence over all possible files in the receiver, evaluating aBlock for each one."

	| aFile |
	self reset.
	[aFile _ self next.
	aFile notNil]
		whileTrue: [aBlock value: aFile]
