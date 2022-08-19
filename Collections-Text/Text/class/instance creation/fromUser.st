fromUser
	"Answer an instance of me obtained by requesting the user to type some
	characters into a View."

	| result |
	FillInTheBlank
		request: 'Type text followed by carriage return'
		displayAt: (50@ Display boundingBox height//2)
		centered: false
		action: [:result]
		initialAnswer: ''.
	^self fromString: result
