firstIndent: anInteger
	"Set the horizontal indenting of the first line of a paragraph in the style of the receiver to be anInteger."
	firstIndent _
		(anInteger max: 0) min: (compositionRectangle width - DefaultSpace - rightIndent).
	self composeAll.
