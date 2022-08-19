changeClass: class
	"Include indication that a class definition has been changed."
	self atClass: class add: #change
