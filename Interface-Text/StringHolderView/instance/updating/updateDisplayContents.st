updateDisplayContents
	"Make the text that is displayed be the contents of the receiver's model."

	| contents |
	contents _ self getContents.
	displayContents string ~= contents
		ifTrue:
			[self editString: contents.
			self displayView]
