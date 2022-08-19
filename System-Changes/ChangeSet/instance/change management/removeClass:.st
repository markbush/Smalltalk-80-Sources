removeClass: class
	"Include indication that a class has been forgotten."

	| name |
	(self isNew: class) ifTrue:
		[^self removeClassChanges: class]. 	"only remember old classes"
	(self atClass: class includes: #rename) 	"remember as old name"
		ifTrue: [name _ self oldNameFor: class]
		ifFalse: [name _ class name].
	self removeClassChanges: class.
	classRemoves add: name
