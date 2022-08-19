rightMarginForDisplay
	"Build the right margin for a line.
	Depends upon compositionRectangle rightSide, marginTabsLevel, and right indent."

	| scale |
	scale _ 1.
	^(compositionRectangle right -
		rightIndent - (textStyle rightMarginTabAt: marginTabsLevel)) * scale
