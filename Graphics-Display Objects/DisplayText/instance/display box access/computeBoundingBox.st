computeBoundingBox
	"Compute minimum enclosing rectangle around characters."

	| character font width carriageReturn lineWidth lineHeight |
	carriageReturn _ Character cr.
	width _ lineWidth _ 0.
	font _ textStyle defaultFont.
	lineHeight _ textStyle lineGrid.
	1 to: text size do:
		[:i |
		character _ text at: i.
		character = carriageReturn
		  ifTrue:
			[lineWidth _ lineWidth max: width.
			lineHeight _ lineHeight + textStyle lineGrid.
			width _ 0]
		  ifFalse: [width _ width + (font widthOf: character)]].
	lineWidth _ lineWidth max: width.
	^offset extent: lineWidth @ lineHeight
