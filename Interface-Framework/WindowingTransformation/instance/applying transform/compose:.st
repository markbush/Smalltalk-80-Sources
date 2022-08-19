compose: aTransformation
	"Answer a new WindowingTransformation that is the composition of the
	receiver and aTransformation.  The effect of applying
	the resulting WindowingTransformation to an object is the same as that of
	first applying aTransformation to the object and then applying the
	receiver to its result."

	| aTransformationScale newScale newTranslation |
	aTransformationScale _ aTransformation scale.
	scale == nil
		ifTrue:
			[aTransformation noScale
				ifTrue: [newScale _ nil]
				ifFalse: [newScale _ aTransformationScale].
			newTranslation _ translation + aTransformation translation]
		ifFalse:
			[aTransformation noScale
				ifTrue: [newScale _ scale]
				ifFalse: [newScale _ scale * aTransformationScale].
			newTranslation _ translation + (scale * aTransformation translation)].
	^WindowingTransformation scale: newScale translation: newTranslation
