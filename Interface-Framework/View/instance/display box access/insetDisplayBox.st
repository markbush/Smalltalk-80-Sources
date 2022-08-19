insetDisplayBox
	"Answer the receiver's inset display box. The inset display box is the intersection
	of the receiver's window, tranformed to display coordinates, and the inset
	display box of the superView, inset by the border width. The inset display box
	represents the region of the display screen in which the inside of the receiver (all
	except the border) is displayed. If the receiver is totally clipped by the display
	screen and its superView, the resulting Rectangle will be invalid."

	[insetDisplayBox == nil] whileTrue: [insetDisplayBox _ self computeInsetDisplayBox].
	^insetDisplayBox
