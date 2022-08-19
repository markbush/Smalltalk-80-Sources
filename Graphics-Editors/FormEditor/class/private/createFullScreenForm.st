createFullScreenForm
	"Create a StandardSystemView for a FormEditor on the form whole screen."

	^self createOnForm: (Form new extent: (Display extent x @ (Display extent y - 112)))
