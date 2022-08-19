tally: context
	"Explicitly tally the specified context and its stack."

	| root |
	context method == method ifTrue: [^self bump].
	(root _ context home sender) == nil ifTrue: [^self bump tallyPath: context].
	^(self tally: root) tallyPath: context
