scheduleActiveNoTerminate: aController
	"Make aController be the active controller.  Presumably the process that requested
	the new active controller wants to keep control to do more activites before the
	new controller can take control.  Therefore, do not terminate the currently
	active process."

	self schedulePassive: aController.
	self scheduled: aController
		from: Processor activeProcess
