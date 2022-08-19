browseAllAccessesTo: instanceVariable
	"Create and schedule a Message Set browser for all the receiver's methods or any methods of a subclass that refer to the instance variable name.  If the instance variable name is not defined for the receiver, the notification 'Nobody' occurs in the System Transcript."

	BrowserView
			openListBrowserOn: (self allAccessesTo: instanceVariable)
			label: instanceVariable
			initialSelection: instanceVariable
