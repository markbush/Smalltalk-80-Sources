displayBorder
	"Display the receiver's border (using the receiver's borderColor)."

	borderWidth = 0
		ifTrue:
			[insideColor == nil
				ifFalse:
					[Display fill: self displayBox mask: insideColor]]
		ifFalse:
			[insideColor == nil
				ifTrue:
					[superView isNil
						ifTrue:	[Display
								border: self displayBox
								widthRectangle: borderWidth
								mask: borderColor]
						ifFalse:	[Display
								border: self displayBox
								widthRectangle: borderWidth
								mask: borderColor
								clippingBox: superView insetDisplayBox]]
				ifFalse:
					[Display fill: self displayBox mask: borderColor.
					Display fill: self insetDisplayBox mask: insideColor]]
