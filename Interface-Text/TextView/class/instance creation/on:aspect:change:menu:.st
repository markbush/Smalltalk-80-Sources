on: anObject aspect: aspectMsg change: changeMsg menu: menuMsg
	"Create a 'pluggable' (see class comment) textView viewing anObject.
	aspectMsg is sent to read the current text value in the model.
		It is also used as the changed: parameter for this view.
	changeMsg is sent to inform anObject of new text for the model.
	menuMsg is sent to read the yellowButton menu for this view."

	^ self new on: anObject aspect: aspectMsg change: changeMsg menu: menuMsg
