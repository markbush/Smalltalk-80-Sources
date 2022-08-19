label: aString
	"Set aString to be the receiver's label."
	aString == nil
		ifTrue:
			[labelText _ nil.
			labelFrame region: (0 @ 0 extent: 0 @ 0)]
		ifFalse:
			[labelText _ aString asParagraph.
			labelFrame region: (0 @ 0 extent: labelText boundingBox width + 8 @ 20)]
