toReverse: aRectangle
	"Return an instance which will reverse a particular rectangle in the
	destination (which must be supplied later).  This is currently used only
	for the Ethernet 'lights'."

	^self
		destForm: nil
		sourceForm: nil
		halftoneForm: nil
		combinationRule: Form reverse
		destOrigin: aRectangle origin
		sourceOrigin: 0 @ 0
		extent: aRectangle extent
		clipRect: aRectangle
