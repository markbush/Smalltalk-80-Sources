setTransformation: aTransformation
	"Sets the View's local transformation to aTransformation, unlocks the View
	(see View|unlock) and sets the viewport to undefined (this forces it to be
	recomputed when needed).  Should be used instead of setting the
	transformation directly."

	transformation _ aTransformation.
	self unlock.
	viewport _ nil
