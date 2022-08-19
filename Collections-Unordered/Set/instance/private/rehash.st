rehash
	| newSelf |
	newSelf _ self species new: self basicSize.
	self do: [:each | newSelf noCheckAdd: each].
	self become: newSelf
