textMenu
	"Browser flushMenus"
	TextMenu == nil ifTrue:
		[TextMenu _ ActionMenu
			labels: 'again\undo\copy\cut\paste\do it\print it\accept\cancel\format\spawn\explain' withCRs
			lines: #(2 5 7 9)
			selectors: #(again undo copySelection cut paste doIt printIt accept cancel format spawnEdits:from: explain)].
	^ TextMenu
