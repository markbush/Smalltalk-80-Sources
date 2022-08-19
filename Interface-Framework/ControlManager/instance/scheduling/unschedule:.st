unschedule: aController
	"Remove the view, aController, from the collection of scheduled controllers."

	scheduledControllers remove: aController ifAbsent: []
