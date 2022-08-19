labelDisplayBox
	"Answer the rectangle that borders the visible parts of the receiver's label on the
	display screen."

	^labelFrame
		align: (self isCollapsed
				ifTrue: [labelFrame topLeft]
				ifFalse: [labelFrame bottomLeft])
		with: self displayBox topLeft
