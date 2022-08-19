promote: aController
	"Make aController be the first scheduled controller in the ordered collection."

	scheduledControllers remove: aController.
	scheduledControllers addFirst: aController
