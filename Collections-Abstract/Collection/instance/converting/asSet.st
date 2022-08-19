asSet
	"Answer a new instance of Set whose elements are the unique elements of
	the receiver."

	| aSet |
	aSet _ Set new: self size.
	self do: [:each | aSet add: each].
	^aSet
