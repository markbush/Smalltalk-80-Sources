select
	"If the text selection is visible on the screen, highlight it."
	selectionShowing ifFalse: [self reverseSelection]
