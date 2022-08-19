text
	isReading
		ifTrue: [^super text]
		ifFalse: [^'' asText]
