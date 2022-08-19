initialize
	"Initialize the state of the receiver. Subclasses should include 'super initialize'
	when redefining this message to insure proper initialization."

	self resetSubViews.
	transformation _ WindowingTransformation identity.
	self borderWidth: 0.
	self borderColor: Form black
