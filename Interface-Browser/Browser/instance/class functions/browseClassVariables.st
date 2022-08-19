browseClassVariables
	"Show a menu of all class variables of the currently selected class
	and its superclasses.  Browse all methods which refer to the variable selected."
	| association |
	association _ self selectedClass
		showVariableMenu: [:class | class classPool associations asSortedCollection]
		collect: [:association | association key].
	association notNil ifTrue:
		[BrowserView
			openListBrowserOn: (self selectedClass allCallsOn: association)
			label: 'Users of ' , association key
			initialSelection: association key]
