controlActivity
	"Pass control to the next control level (that is, to the Controller of a subView of
	the receiver's view) if possible. It is sent by Controller|controlLoop each time
	through the main control loop. It should be redefined in a subclass if some other
	action is needed."

	self controlToNextLevel
