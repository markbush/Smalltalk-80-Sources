text
	field == nil ifTrue: [^ Text new].
	^ self fieldValue printString asText
