selectorMenu
	"Browser flushMenus"
	selector == nil ifTrue: [^ nil].
	MessageMenu == nil ifTrue:
		[MessageMenu _ ActionMenu
			labels: 'file out\print out\spawn\senders\implementors\messages\move\remove' withCRs
			lines: #(3 6)
			selectors: #(fileOutMessage printOutMessage spawnMethod browseSenders browseImplementors browseMessages moveMethod removeMethod)].
	^ MessageMenu
