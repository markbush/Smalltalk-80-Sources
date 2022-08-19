open
	"Create an area on the screen in which the receiver's scheduled controller can
	be displayed.  Make it the active controller."

	view resize.
	status _ #open.
	ScheduledControllers scheduleActive: self
