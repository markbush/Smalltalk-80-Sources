fieldList
	"Answer a collection of the keys of the inspected dictionary."

	| keys |
	keys _ object keys.
	keys detect: [:key | (key class == Symbol) not]
		ifNone: [^keys asSortedCollection]. "sort dictionaries with Symbol keys"
	 ^keys asOrderedCollection
