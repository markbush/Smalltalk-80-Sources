example
	"Designate two places on the screen by clicking any mouse button.
	A straight path with a square black form will be displayed connecting the
	two selected points."

	| aLine aForm |
	aForm _ Form new extent: 20@20.		"make a form one quarter of inch square"
	aForm black.							"turn it black"
	aLine _ Line new.
	aLine form: aForm.						"use the black form for display"
	aLine beginPoint: Sensor waitButton. Sensor waitNoButton.
	aForm displayOn: Display at: aLine beginPoint.
	aLine endPoint: Sensor waitButton.
	aLine displayOn: Display.				"display the line"

	"Line example."
