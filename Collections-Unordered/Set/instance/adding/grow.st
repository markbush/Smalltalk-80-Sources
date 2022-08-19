grow
	"The receiver becomes twice as big--this is not a copy of the receiver, so all shared references survive."

	| newSelf |
	newSelf _ self species new: self basicSize + self growSize.
	self do: [:each | newSelf noCheckAdd: each].
	self become: newSelf
