changeLabel
	| superView |
	"This method accesses the label with a terrible kludge.  It would be better if the label were a view of its own, but there would still be problems."
	superView _ view superView.
	Display gray: superView labelDisplayBox.
	superView label: model listName.
	superView displayView
