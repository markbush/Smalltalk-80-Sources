isLocked
	"Answer whether the receiver is locked.
	A View is 'locked' if its display transformation and inset display box are
	defined. If these are undefined, the View is 'unlocked'. The display
	transformation and inset display box become undefined when the
	transformation of the View (or the transformation of a View in its superView
	chain) is changed, or when the superView of the View is changed, or any
	other change to the View that affects the display screen coordinates of the
	View. The locking and unlocking of a View is handled automatically by the
	internal methods of the View, but can also be done explicitly if desired (see
	View|lock, and View|unlock)."

	displayTransformation == nil | (insetDisplayBox == nil)
		ifTrue: [^false]
		ifFalse: [^true]
