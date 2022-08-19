displayTransform: anObject
	"Apply the display transformation of the receiver to anObject (see
	View|displayTransformation) and answer the resulting scaled, translated
	object. It is normally applied to Rectangles, Points, and other objects with
	coordinates defined in the View's local coordinate system in order to get a
	corresponding object in display coordinates."

	^(self displayTransformation applyTo: anObject) rounded
