proceed
	"Proceed from the interrupted state of the currently selected context.
	The argument is a controller on a view of the receiver.  That view
	is closed."

	self checkContextSelection.
	(context ~= processHandle topContext) | (processHandle interrupted not)
		ifTrue: [context push: processHandle proceedValue].
	self resumeProcess
