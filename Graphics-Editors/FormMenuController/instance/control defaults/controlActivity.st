controlActivity
	"Pass control to a subView corresponding to a pressed keyboard key or to a mouse
	button pressed, if any."

	sensor keyboardPressed
		ifTrue: [self processMenuKey]
		ifFalse: [self controlToNextLevel]
