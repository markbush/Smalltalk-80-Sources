copy: sel from: class
	"Install the method associated with the first arugment, sel, a message selector,
	found in the method dictionary of the second argument, class, as one of the
	receiver's methods.  Classify the message under -as yet not classified-"

	self copy: sel
		from: class
		classified: nil
