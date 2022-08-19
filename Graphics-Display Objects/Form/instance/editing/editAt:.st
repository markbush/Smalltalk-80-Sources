editAt: originPoint
	"Start up an instance of the FormEditor on this form in an area whose
	top left corrner is originPoint. Typically the form is not visible on the
	screen. The editor menu is located at the bottom of the form editing
	frame. The form is displayed centered in the frame. YellowBugMenu
	accept is used to modify the form to reflect the changes made on the
	screen version; cancel restores the original form to the screen. Note that
	the changes are clipped to the original size of the form."

	FormEditor openOnForm: self at: originPoint
