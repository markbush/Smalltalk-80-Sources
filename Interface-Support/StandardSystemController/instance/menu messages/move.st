move
	"Ask the user to designate a new origan position for the recevier's view."
	| form |
	Sensor cursorPoint: view labelDisplayBox origin.
	view deEmphasize.
	form _ Form fromDisplay: (view labelDisplayBox).
	view erase.
	Cursor origin showWhile:
		[form follow: [Sensor cursorPoint] while: [Sensor noButtonPressed]].

	view align: view labelDisplayBox origin
		with: sensor cursorPoint.
	view displayEmphasized.
