copyBitsAgain
	<primitive: 96>
	"don't fail the primitive if no intersection with clipping rectangle (possible LargeIntegers)."
	(self clipRect intersects: (destX@destY extent: width@height))
		ifTrue: [self primitiveFailed]
