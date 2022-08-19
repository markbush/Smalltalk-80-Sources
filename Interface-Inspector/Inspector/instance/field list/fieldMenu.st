fieldMenu
	"Inspector flushMenus"
	field == nil ifTrue: [^ nil].
	ListMenu == nil ifTrue:
		[ListMenu _ ActionMenu
			labels: 'inspect'
			selectors: #(inspectField)].
	^ ListMenu
