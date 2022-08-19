runSimulated: aBlock contextAtEachStep: block2
	"Simulate the execution of aBlock until it ends.  aBlock MUST NOT contain an ^.
	Evaluate block2 with current context prior each instruction executed.
	Answer with the simulated value of aBlock."
	| current |
	aBlock hasMethodReturn
		ifTrue: [self error: 'simulation of blocks with ^ can run loose'].
	self class initPrimitives.
	current _ aBlock.
	current pushArgs: Array new from: self.
	[current == self]
		whileFalse:
			[block2 value: current.
			current _ current step].
	^self pop
