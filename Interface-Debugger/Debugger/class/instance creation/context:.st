context: aContext
	"Answer an instance of me that models the current state of the system.  The active
	process has determined that a debugger should be set up (often by the user issuing
	the command debug)."

	| aDebugger |
	aDebugger _ self new.
	aDebugger
		process: Processor activeProcess
		context: aContext
		interrupted: false.
	^aDebugger
