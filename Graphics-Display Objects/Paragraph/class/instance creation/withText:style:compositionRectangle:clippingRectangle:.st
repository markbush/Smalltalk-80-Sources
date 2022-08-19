withText: aText style: aTextStyle compositionRectangle: compRect clippingRectangle: clipRect
	| para |

	para _ super new
		compositionRectangle: compRect
		text: aText
		style: aTextStyle
		offset: (0@0)
		outputMedium: #Display
		fitWidth: false.
	para clippingRectangle: clipRect.
	^para
