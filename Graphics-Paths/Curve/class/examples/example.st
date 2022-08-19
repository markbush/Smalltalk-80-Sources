example
	"Designate three locations on the screen by clicking any button.  The curve
	determined by the points will be displayed with a long black form."

	| aCurve aForm |
	aForm _ Form new extent: 1@30.			"make a long thin Form for display "
	aForm black.								"turn it black"
	aCurve _ Curve new.
	aCurve form: aForm.						"set the form for display"
				"collect three Points and show them on the dispaly"
	aCurve firstPoint: Sensor waitButton. Sensor waitNoButton.
	aForm displayOn: Display at: aCurve firstPoint.
	aCurve secondPoint: Sensor waitButton. Sensor waitNoButton.
	aForm displayOn: Display at: aCurve secondPoint.
	aCurve thirdPoint: Sensor waitButton. Sensor waitNoButton.
	aForm displayOn: Display at: aCurve thirdPoint.

	aCurve displayOn: Display					"display the Curve"

	"Curve example."
