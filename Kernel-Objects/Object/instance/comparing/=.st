= anObject
	"Answer true if the receiver and the argument represent the same object
	and false otherwise. If = is redefined in any subclass, consider also
	redefining the message hash."

	^self == anObject
