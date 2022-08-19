viewHasCursor
	| temp |
	"Answer true if the cursor point of the receiver's sensor lies within the inset
	display box of the receiver's view (see View|insetDisplayBox), and
	answer false, otherwise. Controller|viewHasCursor is normally used in
	internal methods."

	^view containsPoint: sensor cursorPoint
