openInterrupt: aString onProcess: interruptedProcess
	"Create and schedule an instance of me whose model is a Debugger on
	interruptedProcess.  Sent to notify the user that the system is low in space or that
	the user typed ctrl c.  The label of the scheduled view is aString."

	| debugger topView |
	debugger _ Debugger interruptProcess: interruptedProcess.
	topView _
		self openDebugger: debugger
			contents: debugger interruptedContext shortStack
			label: aString
			displayAt: Display boundingBox center.
	^topView
