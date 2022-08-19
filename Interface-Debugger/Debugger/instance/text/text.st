text
	context == nil ifTrue: [^ Text new].
	^ sourceCode asText makeSelectorBoldIn: self selectedClass
