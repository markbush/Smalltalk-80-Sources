scaleBy: aScale
	"Answer a new WindowingTransformation with the scale and translation of
	the receiver both scaled by aScale."

	| checkedScale newScale newTranslation |
	aScale == nil
		ifTrue:
			[newScale _ scale.
			newTranslation _ translation]
		ifFalse:
			[checkedScale _ self checkScale: aScale.
			scale == nil
				ifTrue: [newScale _ checkedScale]
				ifFalse: [newScale _ scale * checkedScale].
			newTranslation _ checkedScale * translation].
	^WindowingTransformation scale: newScale translation: newTranslation
