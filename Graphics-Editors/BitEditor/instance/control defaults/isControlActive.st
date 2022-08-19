isControlActive
	^super isControlActive & sensor blueButtonPressed not
		& sensor keyboardPressed not
