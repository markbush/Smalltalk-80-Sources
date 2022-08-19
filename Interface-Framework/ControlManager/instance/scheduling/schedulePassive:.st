schedulePassive: aController
	"Make aController be scheduled as a scheduled controller, but not the active one.
	Put it at the beginning of the ordered collection of controllers."

	scheduledControllers addFirst: aController
