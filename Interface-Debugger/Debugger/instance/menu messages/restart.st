restart
	"Proceed from the initial state of the currently selected context.
	The argument is a controller on a view of the receiver.  That view
	is closed."

	self checkContextSelection.
	self revertBlock ifFalse: [^self].
	context restart.
	self resumeProcess
