openDisplayAt: aPoint
	"Create an area with origin aPoint in which the receiver's scheduled
	view can be displayed.  If necessary, translate so the view is completely
	on the screen.  Make it the active view."

	view align: view viewport center with: aPoint.
	view translateBy:
		(view displayBox amountToTranslateWithin: Display boundingBox).
	status _ #open.
	ScheduledControllers scheduleActive: self
