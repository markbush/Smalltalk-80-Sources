openOnForm: aForm at: magnifiedLocation scale: scaleFactor
	"Create and schedule a BitEditor on the form aForm.  Show the small and
	magnified view of aForm."

	| aScheduledView |
	aScheduledView _ self
				bitEdit: aForm
				at: magnifiedLocation
				scale: scaleFactor
				remoteView: nil.
	aScheduledView controller openDisplayAt:
		aScheduledView displayBox topLeft + (aScheduledView displayBox extent / 2)
