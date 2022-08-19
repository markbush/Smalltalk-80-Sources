resumeProcess
	| aScheduledController |
	aScheduledController _ ScheduledControllers activeController.
	aScheduledController view erase.
	process suspendedContext method == (Process compiledMethodAt: #terminate)
		ifFalse:
			[resumeContext == process suspendedContext ifFalse:
				[process popTo: resumeContext].
			ScheduledControllers
				activeControllerNoTerminate: controller  "NoTerminate"
				andProcess: process].
	"if old process was terminated, just terminate current one"
	self release.  "must precede close because it tries to terminate"
	aScheduledController closeAndUnscheduleNoErase.
	Processor terminateActive
