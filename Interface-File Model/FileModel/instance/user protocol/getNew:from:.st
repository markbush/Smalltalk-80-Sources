getNew: ignoreText from: aController
	"Reinitialize the information the receiver models by re-reading the file stream."

	self changeRequest ifFalse: [^ aController view flash].
	self changed: #text
