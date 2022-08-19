startUp
	"Give control to the receiver. The default control sequence is to initialize
	(see Controller|controlInitialize), to loop (see Controller|controlLoop), and
	then to terminate (see Controller|controlTerminate). After this sequence,
	control is returned to the sender of Control|startUp. The receiver's control
	sequence is used to coordinate the interaction of its view and model. In general,
	this consists of polling the sensor for user input, testing the input with respect
	to the current display of the view, and updating the model to reflect intended
	changes."

	self controlInitialize.
	self controlLoop.
	self controlTerminate
