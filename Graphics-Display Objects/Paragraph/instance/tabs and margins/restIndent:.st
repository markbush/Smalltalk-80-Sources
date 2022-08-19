restIndent: anInteger
	"Set the indent for all but the first line of a paragraph in the style of the receiver to be anInteger."
	restIndent _
		(anInteger max: 0) min: (compositionRectangle width - DefaultSpace - rightIndent).
	self composeAll.
