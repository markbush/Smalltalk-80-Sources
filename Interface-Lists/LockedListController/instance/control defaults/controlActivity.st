controlActivity
	self normalResponseTest ifTrue: [^super controlActivity].
	self feedbackResponseTest ifTrue: [^view flash]
