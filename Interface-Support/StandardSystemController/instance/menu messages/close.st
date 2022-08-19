close
	"The receiver's view should be removed from the screen and from the
	collection of scheduled views."

	model changeRequest  "check for changes in progress"
		ifFalse: [^self].
	status _ #closed.
	view erase
