interruptProcess: interruptedProcess
	"Answer an instance of me that models the current state of the system.  The active
	process has decided to provide a debugger on an interrupted process.  This message
	is called if the user types the ctrl c interrupt, or a low space notification occurs."

	| debugger |
	debugger _ self new.
	debugger
		process: interruptedProcess
		context: interruptedProcess suspendedContext
		interrupted: true.
	^debugger
