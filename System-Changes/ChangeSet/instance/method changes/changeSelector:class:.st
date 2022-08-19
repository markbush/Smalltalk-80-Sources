changeSelector: selector class: class
	"Include indication that a method has been edited."

	(self atSelector: selector class: class) = #add
		ifFalse: [self atSelector: selector class: class put: #change]
			"Don't forget a method is new just because it's been changed"
