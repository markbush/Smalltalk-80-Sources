transform: anObject
	"Apply the local transformation of the receiver to anObject and answer the
	resulting transformation.  It is used to get the superView coordinates of an object.
	For example, the viewport is equal to the window transformed."

	^transformation applyTo: anObject
