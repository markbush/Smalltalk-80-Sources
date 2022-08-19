writeWords: obj
	| length |
	self new: obj
		class: obj class
		length: (length _ self sizeInWordsOf: obj)
		trace: []
		write: [1 to: length do: [:i | self writeBitField: (obj instVarAt: i)]]
