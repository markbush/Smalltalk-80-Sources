controlToNextLevel
	"Pass control to the next control level, that is, to the Controller of a subView of
	the receiver's view if possible. The receiver finds the subView (if any) whose controller
	wants control and sends that controller the message startUp."

	| aView |
	aView _ view subViewWantingControl.
	aView ~~ nil ifTrue: [aView controller startUp]
