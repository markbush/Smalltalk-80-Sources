classVarNames
	"Answer a Set of the receiver's class variable names.  Since the receiver does
	not retain knowledge of class variables, the method fakes it by creating an empty set."

	^Set new
