exampleTwo
	"This is to test painting with a gray tone. It also tests that the seaming with gray
	patterns is correct in the microcode.  Lets you paint for awhile and then
	automatically stops."

	| f pt aBitBlt |
	"create a small black Form source as a brush."
	f _ Form new extent: 20 @ 20.
	f black.
	"create a BitBlt which will OR gray into the display"
	aBitBlt _ BitBlt
		destForm: Display
		sourceForm: f
		halftoneForm: Form gray
		combinationRule: Form under
		destOrigin: Sensor cursorPoint
		sourceOrigin: 0 @ 0
		extent: f extent
		clipRect: Display computeBoundingBox.

	"paint the gray Form on the screen for a while"
	1 to: 5000 do:
		[:i |
		aBitBlt destOrigin: Sensor cursorPoint.
		aBitBlt copyBits]

	"BitBlt exampleTwo."
