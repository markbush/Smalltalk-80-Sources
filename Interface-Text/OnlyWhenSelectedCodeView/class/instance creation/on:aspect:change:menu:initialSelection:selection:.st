on: anObject aspect: m1 change: m3 menu: m4 initialSelection: sel selection: selMsg
	"Create an instance viewing anObject.  See super method in TextView for full
	explanation.  initialSelection (if not nil) is a string which will be searched for,
	and then highlighted if found, whenever the viewed text changes."
	^(super on: anObject aspect: m1 change: m3 menu: m4) selectionMsg: selMsg
