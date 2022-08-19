setWindow: aWindow
	"Sets the View's window to aWindow and unlocks the View (see View|unlock).
	View|setWindow should be used by methods of View and subclasses to set the
	View window (rather than directly setting the instance variable) to insure
	that the View is unlocked."

	window _ aWindow.
	viewport _ nil.
	self unlock
