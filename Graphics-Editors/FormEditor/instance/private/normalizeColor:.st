normalizeColor: halftoneForm
	unNormalizedColor _ halftoneForm.
	color _ unNormalizedColor wrapAround: view insetDisplayBox origin.
