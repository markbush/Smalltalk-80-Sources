error: aString
	"The default behavior for error: is the same as halt:.
	This additional message is the one a subclass should override in order to
	change the handling of errors."

	NotifierView
		openContext: thisContext
		label: aString
		contents: thisContext shortStack

	"nil error: 'error message'."
