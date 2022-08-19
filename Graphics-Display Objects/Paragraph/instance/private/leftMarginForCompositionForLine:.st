leftMarginForCompositionForLine: lineIndex
	"Build the left margin for composition of a line.
	Depends upon marginTabsLevel and the indent."
	| scale |
	scale _ 1.
	lineIndex = 1
		ifTrue: [^(firstIndent + (textStyle leftMarginTabAt: marginTabsLevel)) * scale]
		ifFalse: [^(restIndent + (textStyle leftMarginTabAt: marginTabsLevel)) * scale].
