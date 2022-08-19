printOn: aStream indent: level
	receiver printOn: aStream indent: level precedence: 0.
	1 to: messages size do:
		[:i |
		(messages at: i) printOn: aStream indent: level.
		i < messages size ifTrue: [aStream nextPut: $;]]
