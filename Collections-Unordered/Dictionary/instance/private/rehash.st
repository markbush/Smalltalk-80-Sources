rehash
	"Smalltalk rehash."

	| newSelf |
	newSelf _ self species new: self basicSize.
	self associationsDo: [:each | newSelf noCheckAdd: each].
	self become: newSelf
