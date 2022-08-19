prompt: promptString initially: initialString
	| aString |
	FillInTheBlank
		request: promptString , '
then accept or CR'
		displayAt: Sensor cursorPoint centered: false action: [:aString]
		initialAnswer: initialString.
	^ aString
