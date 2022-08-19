align: point1 with: point2
	"Answer a new WindowingTransformation with the same scale as the
	receiver and with a translation of (aPoint2 - aPoint1).
	It is normally used when the source and destination coordinate systems are
	scaled the same (that is, there is no scaling between them), and is then a
	convenient way of specifying a translation, given two points that are
	intended to coincide."

	^self translateBy: point2 - point1
