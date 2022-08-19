halt: aString
	"This message can be used for inserting breakpoints during debugging.
	It creates and schedules a Debugger with the argument, aString, as the label."

	NotifierView
		openContext: thisContext
		label: aString
		contents: thisContext shortStack

	"nil halt: 'Test of halt:.'."
