borderWidth: borderValue
	"Set the four border widths of the receiver to anInteger or rectangle."

	(borderValue isKindOf: Rectangle)
			ifTrue:	[borderWidth _ borderValue.
					self unlock]
			ifFalse:	[self
					borderWidthLeft: borderValue
					right: borderValue
					top: borderValue
					bottom: borderValue].
