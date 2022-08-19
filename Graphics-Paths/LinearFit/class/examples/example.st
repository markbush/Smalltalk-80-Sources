example
	"Select points on a Path using the red button.  Terminate by selecting any other
	button.  Creates a Path from the points and displays it as a piece-wise linear
	approximation."

	| aLinearFit aForm flag |
	aLinearFit _ LinearFit new.
	aForm _ Form new extent: 1 @ 40.
	aForm  black.
	aLinearFit form: aForm.
	flag _ true.
	[flag] whileTrue:
		[Sensor waitButton.
		 Sensor redButtonPressed
			ifTrue: [aLinearFit add: Sensor waitButton. Sensor waitNoButton.
					aForm displayOn: Display at: aLinearFit last]
			ifFalse: [flag_false]].
	aLinearFit displayOn: Display

	"LinearFit example."
