buildAnswerView: aFillInTheBlank frameWidth: widthInteger
	| answerView |
	answerView _ self new model: aFillInTheBlank.
	answerView window: (0@0 extent: widthInteger @ 40).
	answerView borderWidth: 2.
	^answerView
