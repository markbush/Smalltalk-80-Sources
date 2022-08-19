categoryMenu
	"Browser flushMenus"
	category == nil ifTrue:
		[^ ActionMenu labels: 'add category\update\edit all' withCRs
					lines: #(1)
					selectors: #(addCategory updateCategories editCategories )].
	CategoryMenu == nil ifTrue:
		[CategoryMenu _ ActionMenu
			labels: 'file out\print out\spawn\add category\rename\remove\update\edit all' withCRs
			lines: #(3 6)
			selectors: #(fileOutCategory printOutCategory spawnCategory addCategory renameCategory removeCategory updateCategories editCategories)].
	^ CategoryMenu
