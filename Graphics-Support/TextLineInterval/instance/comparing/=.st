= line
	self species = line species
		ifTrue: [^((start = line first and: [stop = line last])
				and: [internalSpaces = line internalSpaces])
				and: [paddingWidth = line paddingWidth]]
		ifFalse: [^false]
