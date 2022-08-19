name
	"Answer a String that is the name of the receiver, either Metaclass or the
	name of the receiver's class followed by the ' class'."

	thisClass == nil
		ifTrue: [^'a Metaclass']
		ifFalse: [^thisClass name , ' class']
