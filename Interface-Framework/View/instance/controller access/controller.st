controller
	"If the receiver's controller is nil (the default case), an initialized instance of the
	receiver's default controller is returned."

	controller == nil ifTrue: [self controller: self defaultController].
	^controller
