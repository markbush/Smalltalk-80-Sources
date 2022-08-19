trace: aBlock
	"This method uses the simulator to print calls and returned values in the Transcript"
	| prev current |
	prev _ aBlock.
	^ thisContext sender
		runSimulated: aBlock
		contextAtEachStep:
			[:current |
			current == prev
				ifFalse:
					[prev sender == nil ifTrue:  "returning"
						[Transcript space; nextPut: $^; print: current top].
					Transcript cr;
						nextPutAll: (String new: (current depthBelow: aBlock) withAll: $ );
						print: current receiver; space; nextPutAll: current selector; endEntry.
					prev _ current]]

	"ContextPart trace: [3 factorial]"
