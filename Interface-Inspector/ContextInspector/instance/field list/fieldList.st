fieldList
	object == nil ifTrue: [^nil].
	^(tempNames _ object tempNames)
