accept
	model isUnlocked ifTrue: [^view flash].
	self controlTerminate.
	"Submit the new contents to the model for validation before accepting."
	(model contents: paragraph string notifying: self) ifTrue: [super accept].
	self controlInitialize
