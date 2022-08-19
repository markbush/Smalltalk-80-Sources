spyOn: aBlock
	"An execution profile of the execution of aBlock is obtained.  For example:
		MessageTally spyOn: [Pen example].
	The execution profile is presented in a workspace (user is prompted for area).
	No value is returned"
	| spy val reportStream |
	spy _ self new.
	"Set up the block"
	spy spyEvery: spy defaultInterval on: aBlock.
	"Run the block and take the tallies"
	val _ spy continueSpying.
	"Report it"
	reportStream _ WriteStream on: (String new: 5000).
	spy reportOn: reportStream; close.
	StringHolderView
		open: (StringHolder new contents: reportStream contents)
		label: 'Spy Results'.
	^val  "Never gets returned due to window scheduling"
