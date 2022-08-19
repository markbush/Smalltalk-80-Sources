scale: aScale translation: aTranslation
	"Answer an instance of me with a scale factor of
	aScale and a translation offset of aTranslation. When the transformation is
	applied (see WindowingTransformation|apply:), the scale is applied first,
	followed by the translation."

	^self new setScale: aScale translation: aTranslation
