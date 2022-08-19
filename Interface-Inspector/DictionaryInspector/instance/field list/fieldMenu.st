fieldMenu
	"DictionaryInspector flushMenus"

	field == nil ifTrue:
		[^ActionMenu labels: 'add field' withCRs
			selectors: #(addField)].
	DictListMenu == nil ifTrue:
		[DictListMenu _ ActionMenu
			labels: 'inspect\references\add field\remove' withCRs
			lines: #(2)
			selectors: #(inspectField browseReferences
						addField removeField)].
	^DictListMenu
