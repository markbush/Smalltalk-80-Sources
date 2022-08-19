defaultWindow
	"Returns the frame of the SwitchView's label's frame (slightly enlarged)
	if the label exists, and returns the standard View default window (see
	View|defaultWindow), otherwise."

	label == nil
		ifTrue: [^super defaultWindow]
		ifFalse: [^label boundingBox expandBy: 6]
