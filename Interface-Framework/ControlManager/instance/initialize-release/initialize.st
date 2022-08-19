initialize
	"Initialize the receiver to refer to only the background controller."
	| screenView |
	screenController _ ScreenController new.
	screenView _ FormView new.
	screenView model: (InfiniteForm with: Form gray) controller: screenController.
	screenView window: Display boundingBox.
	scheduledControllers _ OrderedCollection with: screenController
