proceed
	"Continue the file in, ignoring this section of code, regardless of whether or not the
	syntax error was corrected."

	self changeRequest ifTrue: [processHandle proceed]
