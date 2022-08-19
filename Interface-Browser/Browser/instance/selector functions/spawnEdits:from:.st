spawnEdits: aText from: aController
	| newController |
	newController _ aController copy.  "Copy gets the changes"
	aController cancel; controlTerminate.   "Cancel changes in spawning browser"
	selector == nil  "spawn full browser if not in a specific method"
		ifTrue: [BrowserView openOn: self copy withController: newController]
		ifFalse: [BrowserView openMethodBrowserOn: self copy withController: newController]
