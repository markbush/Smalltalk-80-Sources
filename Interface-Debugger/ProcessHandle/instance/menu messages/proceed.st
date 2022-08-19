proceed
	interrupted ifTrue: [resumeContext push: proceedValue].
	self resumeProcess
