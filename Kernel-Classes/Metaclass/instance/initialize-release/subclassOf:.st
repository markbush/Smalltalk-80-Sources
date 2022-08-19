subclassOf: superMeta
	"Change the receiver to be a subclass of the argument, superMeta, a metaclass.
	Reset the receiver's method dictionary and properties."

	superclass _ superMeta.
	methodDict _ MethodDictionary new.
	format _ superMeta format.
	instanceVariables _ nil
