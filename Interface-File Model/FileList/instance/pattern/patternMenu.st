patternMenu
	"FileModel flushMenus"
	PatternMenu == nil ifTrue:
		[PatternMenu _ ActionMenu
			labels: 'again\undo\copy\cut\paste\accept\cancel' withCRs
			lines: #(2 5)
			selectors: #(again undo copySelection cut paste accept cancel)].
	^ PatternMenu
