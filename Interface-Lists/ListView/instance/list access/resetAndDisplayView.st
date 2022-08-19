resetAndDisplayView
	"Set the list of items displayed to be empty and redisplay the receiver."

	isEmpty
		ifFalse:
			[self reset.
			self displayView]
