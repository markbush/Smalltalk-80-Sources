openFullScreenForm
	"Create and schedule an instance of me on the form whose extent is the extent of
	the display screen."

	| topView |
	topView _ self createFullScreenForm.
	topView controller
		openDisplayAt: (topView viewport extent//2)

	"FormEditor openFullScreenForm."
