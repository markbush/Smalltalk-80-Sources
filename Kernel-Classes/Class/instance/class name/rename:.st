rename: aString
	"The new name of the receiver is the argument, aString."

	| newName |
	newName _ aString asSymbol.
	(Smalltalk includesKey: newName)
		ifTrue: [^self error: newName , ' already exists'].
	Smalltalk renameClass: self as: newName.
	name _ newName.
	self comment: self comment.
	self class comment: self class comment
