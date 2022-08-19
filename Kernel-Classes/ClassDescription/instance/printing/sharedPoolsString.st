sharedPoolsString
	"Answer a string of my class variable names separated by spaces."
	| aStream |
	aStream _ WriteStream on: (String new: 100).
	self sharedPools do: [:x | aStream nextPutAll: (Smalltalk keyAtValue: x); space].
	^ aStream contents
