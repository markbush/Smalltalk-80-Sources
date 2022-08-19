addClass: class
	"Include indication that a new class was created."
	classRemoves remove: class name ifAbsent: [].
	self atClass: class add: #add
