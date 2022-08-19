browseAllCallsOn: literal1 and: literal2
	"Create and schedule a message browser on each method that calls on the
	two Symbols, literal1 and literal2.
	For example,
		Smalltalk browseAllCallsOn: #at: and: #at:pt:.	"

	BrowserView
		openListBrowserOn: (self allCallsOn: literal1 and: literal2)
		label: literal1 printString , literal2 printString
