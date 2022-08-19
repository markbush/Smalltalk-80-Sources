setOutputParameters
	BinaryChoice
		message: 'Would you like the transcript to just show labels, rather than full reports?'
		displayAt: Sensor mousePoint
		centered: true
		ifTrue: [verboseTranscript _ false]
		ifFalse: [verboseTranscript _ true].
	BinaryChoice
		message: 'Should the full reports to be output (saved on a file or stream)?'
		displayAt: Sensor mousePoint
		centered: true
		ifTrue: [reporting _ true]
		ifFalse: [reporting _ false].
	reporting ifTrue:
		[FillInTheBlank
			request: 'Please supply desired output name'
			displayAt: Sensor mousePoint
			centered: true
			action: [:answer | reportStream _ self makeOutputNamed: answer]
			initialAnswer: '.timing']
