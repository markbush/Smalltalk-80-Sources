install
	"Get connected back up to the hardware after a snapshot or quit."

	"Call the initialization code that depends on system parameters,
	in case we are coming up on a system different from the one
	that we quit or snapshot on."
	CompiledMethod initialize.
	SmallInteger initialize.
	LargePositiveInteger initialize.
	LargeNegativeInteger initialize.

	DisplayScreen currentDisplay: Display.
	Cursor currentCursor: Cursor currentCursor.
	InputSensor install.
	LowSpaceProcess == nil ifFalse: [LowSpaceProcess terminate].
	LowSpaceSemaphore _ Semaphore new.
	LowSpaceProcess _ [self lowSpaceNotificationLoop] newProcess.
	LowSpaceProcess priority: Processor lowIOPriority.
	LowSpaceProcess resume.
	self resetSpaceLimits.
