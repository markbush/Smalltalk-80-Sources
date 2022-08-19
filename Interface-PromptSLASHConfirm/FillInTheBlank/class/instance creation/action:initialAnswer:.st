action: aBlock initialAnswer: aString
	"Answer an instance of me whose action is aBlock and initial action argument is
	aString."
	| newBlank |
	newBlank _ self new initialize.
	newBlank action: aBlock.
	newBlank contents: aString.
	^newBlank
