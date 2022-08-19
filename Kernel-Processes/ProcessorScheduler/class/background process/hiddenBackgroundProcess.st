hiddenBackgroundProcess
	"Install a default background process which is invisible."

	self background:
		[[true] whileTrue: []]
