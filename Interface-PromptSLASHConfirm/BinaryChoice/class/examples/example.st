example
	BinaryChoice
		message: 'Are you happy?'
		displayAt: Sensor waitButton
		centered: true
		ifTrue: [Transcript cr; show: 'happy']
		ifFalse: [Transcript cr; show: 'not happy']

	"BinaryChoice example."
