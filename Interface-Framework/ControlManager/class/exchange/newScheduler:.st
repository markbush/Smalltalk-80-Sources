newScheduler: controlManager
	"When switching projects, the control scheduler has to be exchanged.  The
	active one is the one associated with the current project."

	ScheduledControllers deactivate.
	Smalltalk at: #ScheduledControllers put: controlManager.
	ScheduledControllers restore.
	controlManager searchForActiveController
