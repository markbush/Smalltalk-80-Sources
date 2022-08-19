replaceEditSelectionWith: aString
	| editor |
	editor _ self editor.
	correctionDelta _ correctionDelta + aString size - editor selection size.
	editor deselect; replaceSelectionWith: aString asText
