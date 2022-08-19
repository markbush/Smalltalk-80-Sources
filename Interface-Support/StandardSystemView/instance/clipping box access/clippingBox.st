clippingBox
	"Answer the rectangular area in which the receiver can show its label."

	^self isTopView
		ifTrue: [self labelDisplayBox]
		ifFalse: [super insetDisplayBox]
