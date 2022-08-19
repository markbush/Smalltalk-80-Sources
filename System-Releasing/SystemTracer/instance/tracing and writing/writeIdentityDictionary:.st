writeIdentityDictionary: obj
	"Elements of an IdentityDict need to be reOrdered owing to new oops"
	"Here we also support removal of entries for clamped values"
	| i perm fixPart length objCopy |
	objCopy _ obj copy.
	objCopy keys do:
		[:key |
		(self hasClamped: (objCopy at: key)) ifTrue: [objCopy removeKey: key]].
	holder nextPut: objCopy.
	fixPart _ objCopy class instSize.
	self new: obj
		class: objCopy class
		length: (length _ self sizeInWordsOf: objCopy)
		trace:
			["map the keys first"
			3 to: length do: [:i | self trace: (objCopy instVarAt: i)].
			perm _
				self permutation:
					[:key |  "IdentityDicts hash by asOop, not hash"
					key class == SmallInteger
						ifTrue: [self newSmallIntegerHash: key]
						ifFalse: [self newHashFor: key asOop]]
				for: objCopy.
			self permute: (objCopy instVarAt: 2) by: perm.
			"and permute the new value vector"
			1 to: 2 do: [:i | self trace: (objCopy instVarAt: i)]]
		write:
			[1 to: fixPart do: [:i | self writePointerField: (objCopy instVarAt: i)].
			1 to: objCopy basicSize do: [:i | self writePointerField: ((perm at: i)
						== nil ifFalse: [objCopy instVarAt: (perm at: i)
								+ fixPart])]]
