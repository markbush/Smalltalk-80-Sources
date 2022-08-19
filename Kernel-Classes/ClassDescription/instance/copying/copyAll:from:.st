copyAll: selArray from: class
	"Install all the methods found in the method dictionary of the second argument, class,
	as the receiver's methods.  Classify the messages under -as yet not classified-"

	self copyAll: selArray
		from: class
		classified: nil
