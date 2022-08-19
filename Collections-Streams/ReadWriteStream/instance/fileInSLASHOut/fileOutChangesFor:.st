fileOutChangesFor: class
	"Append to the receiver a description of the changes to the argument, class."

	Cursor write showWhile:
		[self timeStamp.
		Smalltalk changes fileOutChangesFor: class on: self.
		self close]
