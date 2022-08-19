spawn: aString
	"Create and schedule a message browser on the message, aString.  Any edits already
	made are retained."

	context == nil
		ifFalse:
			[^BrowserView openMethodBrowserOn:
				(MethodListBrowser on:
					(Array with: self selectedClass name
							with: selector))
					"editString: aString"]
