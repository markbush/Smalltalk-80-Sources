connection: anObject
	"Set anObject to be the connection among two or more Switches."
	connection _ anObject.
	connection addDependent: self
