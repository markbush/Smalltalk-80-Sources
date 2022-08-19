classVariablesString
	"Answer a string of my class variable names separated by spaces, in alphabetical order."
	| aStream |
	aStream _ WriteStream on: (String new: 100).
	self classPool keys asSortedCollection do: [:key | aStream nextPutAll: key; space].
	^ aStream contents
