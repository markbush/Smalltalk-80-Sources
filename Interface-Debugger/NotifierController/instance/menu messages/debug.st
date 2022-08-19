debug
	"Open a Debugger on the receiver's model."

	self controlTerminate.
	view erase.
	Debugger openFullViewOn: model label: view label.
	self closeAndUnscheduleNoErase.
	Processor terminateActive
