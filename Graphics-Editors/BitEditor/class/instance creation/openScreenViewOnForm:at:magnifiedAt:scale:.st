openScreenViewOnForm: aForm at: formLocation magnifiedAt: magnifiedLocation scale: scaleFactor
	"Create and schedule a BitEditor on the form aForm.  Show the magnified
	view of aForm in a scheduled window."

	| smallFormView bitEditor savedForm |
	smallFormView _ FormView new model: aForm.
	smallFormView align: smallFormView viewport topLeft with: formLocation.
	bitEditor _ self bitEdit: aForm at: magnifiedLocation scale: scaleFactor remoteView: smallFormView.
	savedForm _ Form fromDisplay: bitEditor displayBox.
	bitEditor controller blueButtonMenu: nil blueButtonMessages: nil.
	bitEditor controller startUp.
	savedForm displayOn: Display at: bitEditor displayBox topLeft.
	bitEditor release.
	smallFormView release
