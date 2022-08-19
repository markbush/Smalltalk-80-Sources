halt
	"This is a simple message to use for inserting breakpoints during debugging."

	NotifierView
		openContext: thisContext
		label: 'Halt encountered.'
		contents: thisContext shortStack

	"nil halt."
