fileOutChanges
	"Append to the receiver a description of all system changes."

	Cursor write showWhile:
		[self timeStamp.
		Smalltalk changes fileOutOn: self.
		self close]
