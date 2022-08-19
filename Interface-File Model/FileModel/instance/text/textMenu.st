textMenu
	"FileModel flushMenus"
	fileName == nil ifTrue: [^ nil].
	TextMenu == nil ifTrue:
		[TextMenu _ ActionMenu
			labels: 'again\undo\copy\cut\paste\do it\print it\file it in\put\get' withCRs
			lines: #(2 5 8 10)
			selectors: #(again undo copySelection cut paste doIt printIt fileItIn:from: accept getNew:from:)].
	^ TextMenu
