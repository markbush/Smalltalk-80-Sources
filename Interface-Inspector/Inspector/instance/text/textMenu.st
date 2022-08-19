textMenu
	"Inspector flushMenus"
	TextMenu == nil ifTrue:
		[TextMenu _ ActionMenu
			labels: 'again\undo\copy\cut\paste\do it\print it\accept\cancel' withCRs
			lines: #(2 5 7)
			selectors: #(again undo copySelection cut paste doIt printIt accept cancel)].
	^ TextMenu
