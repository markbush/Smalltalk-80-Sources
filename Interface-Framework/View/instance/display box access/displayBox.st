displayBox
	"Answer the receiver's inset display box (see View|insetDisplayBox) expanded by the
	borderWidth.  The display box represents the region of the display screen in
	which the receiver (including the border) is displayed.  If the receiver is totally
	clipped by the display screen and its superView, the resulting Rectangle will
	be invalid."

	^self insetDisplayBox expandBy: borderWidth
