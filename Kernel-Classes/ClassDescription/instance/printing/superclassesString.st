superclassesString
	"Answer a string of my superclass names separated by spaces."
	| aStream names |
	aStream _ WriteStream on: (String new: 100).
	self superclasses do: [:each | aStream nextPutAll: each name; space].
	^ aStream contents
