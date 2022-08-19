resetSpaceLimits
	"Reset the threashold on the number of oops and the core space at which
	point the user should be notified."

	OopsLeftLimit _ self oopsLeft // 4.
	WordsLeftLimit _ self coreLeft // 4.
	self resetLowSpaceSignal
