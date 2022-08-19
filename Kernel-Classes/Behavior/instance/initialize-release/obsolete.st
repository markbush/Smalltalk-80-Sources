obsolete
	"Invalidate and recycle local messages.  Remove the receiver from its superclass'
	subclass list."

	methodDict _ MethodDictionary new.
	self superclasses do: [:each | each removeSubclass: self].
	self removeFromInheritanceTables
