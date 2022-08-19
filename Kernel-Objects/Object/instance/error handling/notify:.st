notify: aString
	"Create and schedule a Notifier with the argument as the message in order
	to request confirmation before a process can proceed."


	NotifierView
		openContext: thisContext
		label: 'Notifier'
		contents: aString

	"nil notify: 'confirmation message'."
