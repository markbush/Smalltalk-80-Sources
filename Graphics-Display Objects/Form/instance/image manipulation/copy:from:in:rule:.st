copy: destRectangle from: sourcePt in: sourceForm rule: rule
	"Make up a BitBlt table and copy the bits"

	(BitBlt
		destForm: self
		sourceForm: sourceForm
		halftoneForm: nil
		combinationRule: rule
		destOrigin: destRectangle origin
		sourceOrigin: sourcePt
		extent: destRectangle extent
		clipRect: (0@0 extent: width@height)) copyBits
"
 [Sensor redButtonPressed] whileFalse:
	[Display copy: (30@30 extent: 300@300) from: Sensor cursorPoint in: Display rule: Form over].
"
