controlInitialize
	"Sent by Controller|startUp as part of the standard control sequence. It provides
	a place in the standard control sequence for initializing the receiver
	(taking into account the current state of its model and view). It should be
	redefined in subclasses to perform some specific action."
	^self
