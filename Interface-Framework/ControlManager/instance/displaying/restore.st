restore
	"Clear the screen to gray and then redisplay all the scheduled views."

	self unschedule: screenController.
	self scheduleOnBottom: screenController.
	screenController view window: Display boundingBox.
	scheduledControllers reverseDo:
		[:aController | aController view display; deEmphasize].
	Cursor normal show
