openOnForm: aForm at: originPoint
	"Create and schedule an instance of me on the form aForm whose view origin is
	originPoint."

	| topView |
	topView _ self createOnForm: aForm.
	topView controller
		openDisplayAt: originPoint + (topView viewport extent//2)
