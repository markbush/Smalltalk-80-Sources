writeBytes: obj
	self new: obj
		class: obj class
		length: (self sizeInWordsOf: obj)
		trace: []
		write:
			[1 to: obj size do: [:i | file nextPut: (obj at: i) asInteger].
			file padToNextWordPut: 0]
