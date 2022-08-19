tallyMethods: aBlock
	"This method uses the simulator to count the number of calls on each method
	invoked in evaluating aBlock.  Results are given in order of decreasing counts."
	| prev current tallies |
	tallies _ Bag new.
	prev _ aBlock.
	thisContext sender
		runSimulated: aBlock
		contextAtEachStep:
			[:current |
			current == prev ifFalse: "call or return"
				[prev sender == nil ifFalse: "call only"
					[tallies add: current printString].
				prev _ current]].
	^tallies sortedCounts

	"ContextPart tallyMethods: [3.14159 printString]."
