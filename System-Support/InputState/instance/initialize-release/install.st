install
	"Initialize and connect the receiver to the hardware.  Terminate the old input
	process if any."

	InputProcess == nil ifFalse: [InputProcess terminate].
	self initState.
	InputSemaphore _ Semaphore new.
	InputProcess _ [self run] newProcess.
	InputProcess priority: Processor lowIOPriority.
	InputProcess resume.
	self primInputSemaphore: InputSemaphore
