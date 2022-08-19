writeSet: obj
	"Elements of a Set need to be reOrdered owing to new oops"
	| perm length assoc |
	self new: obj
		class: obj class
		length: (length _ self sizeInWordsOf: obj)
		trace:
			[1 to: length do: [:i | self trace: (obj instVarAt: i)].
			"map the elements first"
			perm _ self permutation: [:key | key hashMappedBy: self] for: obj]
		write:
			[1 to: obj class instSize do:
				[:i | self writePointerField: (obj instVarAt: i)].
			1 to: obj basicSize do:
				[:i |
				self writePointerField:
					((perm at: i) == nil ifFalse: [obj basicAt: (perm at: i)])]]
