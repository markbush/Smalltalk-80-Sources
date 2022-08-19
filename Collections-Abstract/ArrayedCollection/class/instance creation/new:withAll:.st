new: size withAll: value
	"Answer a new instance of me, whose every element is equal to the argument,
	value."

	^(self new: size) atAllPut: value
