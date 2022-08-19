on: anObject
	aspect: aspectMsg change: changeMsg list: listMsg menu: menuMsg initialSelection: sel
	"Create a 'pluggable' (see class comment) listView viewing anObject.
	aspectMsg is sent to read the value of the current selection.
		It is also used as the changed: parameter for this view.
	changeMsg is sent to inform anObject of a new selection.
	listMsg is sent to read the current list which should be displayed.
	menuMsg is sent to read the yellowButton menu for this view.
	initialSelection is sent to read a selection to be selected initailly as a default."

	^ self new on: anObject printItems: false oneItem: false
		aspect: aspectMsg change: changeMsg list: listMsg menu: menuMsg initialSelection: sel
