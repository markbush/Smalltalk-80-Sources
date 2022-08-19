openNoTerminateDisplayAt: aPoint
	"Create an area with origin aPoint in which the receiver's scheduled view can
	be displayed.  Make it the active view.  Do not terminate the currently active
	process."

	view resizeMinimumCenteredAt: aPoint.
	status _ #open.
	ScheduledControllers scheduleActiveNoTerminate: self
