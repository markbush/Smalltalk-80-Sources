checkScale: aScale
	"Converts aScale to the internal format of a floating-point Point."
 	| checkedScale |
	checkedScale _ aScale asPoint.
	^checkedScale x asFloat @ checkedScale y asFloat
