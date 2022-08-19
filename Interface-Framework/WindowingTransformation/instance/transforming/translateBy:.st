translateBy: aPoint
	"Answer a new WindowingTransformation with the same scale as the
	receiver and with a translation of the current translation plus aPoint. It is used
	when the translation is known in scaled source coordinates, rather than source
	coordinates (see WindowingTransformation|scrollBy:). If no scaling is in effect
	(scale = nil), then WindowingTransformation|translateBy: and
	WindowingTransformation|scrollBy: are equivalent."

	^WindowingTransformation scale: scale translation: translation + aPoint
