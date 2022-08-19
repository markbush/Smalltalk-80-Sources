getWindow
	"Returns the Rectangle that represents the window of this View. If no window
	has been specified, a default window (see View|defaultWindow) is created,
	saved, and returned.
	Should be used by methods of View and subclasses to access the View window
	instead of directly accessing the field unless it is known that a window
	actually exists. It is not to be used outside of View (or subclasses) because the
	window is not sharable. View|window should be used for outside access to the
	window."

	window == nil ifTrue: [self setWindow: self defaultWindow].
	^window
