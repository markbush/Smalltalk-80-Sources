spyEvery: millisecs on: aBlock
	"Create a spy on the given block at the specified rate.  Don't run it yet"
	(aBlock isMemberOf: BlockContext)
		ifFalse: [self error: 'spy needs a block here'].
	self class: aBlock receiver class method: aBlock method.
		"set up the probe"
	ObservedProcess _ Processor activeProcess.
	HowOften _ millisecs.
	TargetBlock _ aBlock

"Set a block up for spying, and accumulate the tallies from several executions
	| spy |
	spy _ MessageTally new.
	spy spyEvery: spy defaultInterval on:
		['this block contains your code'. 30 factorial].
	10 timesRepeat: [spy continueSpying].
	spy report: 'spy.results'.  spy close.
	(Disk file: 'spy.results') edit.

If there are no tallies reported, the block executes faster than the delay"
