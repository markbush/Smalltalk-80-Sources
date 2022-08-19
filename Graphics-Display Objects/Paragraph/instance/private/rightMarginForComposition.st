rightMarginForComposition
	"Build the right margin for a line.
	Depends upon compositionRectangle width, marginTabsLevel, and right
	indent."
	| scale |

	scale _ 1.
	^(compositionRectangle width
		- (textStyle rightMarginTabAt: marginTabsLevel) - rightIndent) * scale
