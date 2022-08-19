buttonPressed: aSymbol
	"The argument indicates which button should be tested.  Answer whether
	it is pressed."

	aSymbol = #redButton ifTrue: [^Sensor redButtonPressed].
	aSymbol = #yellowButton ifTrue: [^Sensor yellowButtonPressed].
	aSymbol = #blueButton ifTrue: [^Sensor blueButtonPressed].
	^Sensor anyButtonPressed
