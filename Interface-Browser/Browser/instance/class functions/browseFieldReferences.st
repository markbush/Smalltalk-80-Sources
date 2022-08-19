browseFieldReferences
	"Show a menu of all instance variables of the currently selected class
	and its superclasses.  Browse all methods which refer to the variable selected."
	| name |
	name _ self selectedClass showVariableMenu: [:class | class instVarNames]
				collect: [:name | name].
	name notNil ifTrue:
		[BrowserView
			openListBrowserOn: (self selectedClass allAccessesTo: name)
			label: name
			initialSelection: name]
