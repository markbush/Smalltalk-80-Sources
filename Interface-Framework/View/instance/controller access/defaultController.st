defaultController
	"Answer an initialized instance of the receiver's default controller.
	Subclasses should redefine this message only if the default controller
	instances need to be initialized in a nonstandard way."

	^self defaultControllerClass new
