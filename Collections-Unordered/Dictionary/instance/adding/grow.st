grow
	| newSelf |
	newSelf _ self species new: self basicSize + self growSize.
	self associationsDo: [:each | newSelf noCheckAdd: each].
	self become: newSelf
