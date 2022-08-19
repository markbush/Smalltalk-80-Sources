openDebugger: aDebugger contents: aString1 label: aString2 displayAt: aPoint
	| notifierView |
	Cursor normal show.
	Cursor cursorLink: true.
	notifierView _ self new model: aDebugger.
	notifierView contents: aString1.
	notifierView label: aString2.
	notifierView borderWidth: 2.
	notifierView
		minimumSize: notifierView defaultWindow width
						@ notifierView defaultWindow height.
	notifierView controller openNoTerminateDisplayAt: aPoint.
	^notifierView
