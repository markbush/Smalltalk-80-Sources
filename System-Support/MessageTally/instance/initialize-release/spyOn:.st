spyOn: aBlock
	"Spy on the evaluation of aBlock.  Browse the results in a workspace."
	| val reportStream |
	"Set up the block"
	self spyEvery: self defaultInterval on: aBlock.
	"Run the block and take the tallies"
	val _ self continueSpying.
	"Report it"
	reportStream _ WriteStream on: (String new: 5000).
	self reportOn: reportStream.
	self close.
	StringHolderView
		open: (StringHolder new contents: reportStream contents)
		label: 'Spy Results'.
	^val  "Never gets returned due to window scheduling"
