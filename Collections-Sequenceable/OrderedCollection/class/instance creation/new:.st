new: anInteger
	"If a subclass adds fields, then it is necessary for that subclass to reimplement
	new: "

	^(super new: anInteger) setIndices
