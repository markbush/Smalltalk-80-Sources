rightIndent: anInteger
	"Set the right margin indent for the lines of a paragraph in the style of the receiver to be anInteger."
	| maxRightIndent |
	firstIndent > restIndent
		ifTrue:	[maxRightIndent _
					(compositionRectangle width- DefaultSpace - firstIndent) max: 1]
		ifFalse:	[maxRightIndent _
					(compositionRectangle width- DefaultSpace - restIndent) max: 1].
	rightIndent _ anInteger min: maxRightIndent.
	self composeAll.
