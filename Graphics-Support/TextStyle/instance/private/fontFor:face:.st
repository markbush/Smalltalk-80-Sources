fontFor: fontIndex face: face
	| currentFont currentFamilySizeFace family size emphasis newFamilySizeFace |
	currentFamilySizeFace _ (currentFont _ fontArray at: fontIndex) familySizeFace.
	family _ currentFamilySizeFace at: FamilyName.
	size _ currentFamilySizeFace at: PointSize.
	emphasis _ currentFont emphasis.
	(1 to: fontArray size)
		do:	[:faceFontIndex |
			newFamilySizeFace _ (currentFont _ fontArray at: faceFontIndex) familySizeFace.
			((((family = (newFamilySizeFace at: FamilyName))
				and: [size = (newFamilySizeFace at: PointSize)])
					and: [face = (newFamilySizeFace at: Face)])
						and: [(emphasis bitAnd: NonFaceEmphasisMask) =
								(currentFont emphasis bitAnd: NonFaceEmphasisMask)])
				ifTrue:	[^faceFontIndex]].
	^ fontIndex
