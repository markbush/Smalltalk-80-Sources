closeAndUnschedule
	"Erase the receiver's view and remove it from the collection of scheduled controllers."

	status _ #closed.
	view erase.
	view release.
	ScheduledControllers unschedule: self
