browseAllCallsOn: aSymbol
	"Create and schedule a message browser on each method that calls on aSymbol.
	For example,
		Number browseAllCallsOn: #/.	"

	| label key |
	(aSymbol isMemberOf: Association)
		ifTrue: [key _ aSymbol key. 	label _ 'Users of ' , key]
		ifFalse: [key _ aSymbol. 		label _ 'Senders of ', key].

	^ BrowserView
		openListBrowserOn: (self allCallsOn: aSymbol)
		label: label, ' from ', self name
		initialSelection: key asSymbol keywords first
