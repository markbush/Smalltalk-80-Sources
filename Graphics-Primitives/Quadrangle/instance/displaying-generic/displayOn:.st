displayOn: aDisplayMedium
	"Display the border and insideRegion of the receiver."

	insideColor ~~ nil ifTrue: [aDisplayMedium fill: self inside mask: insideColor].
	borderWidth ~~ 0 & (insideColor ~~ nil)
		ifTrue:
			[aDisplayMedium fill: self region mask: borderColor.
			aDisplayMedium fill: self inside mask: insideColor]
