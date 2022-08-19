removeClassNamed: className
	"Remove the class with the name className, and all of its subclasses, from the system, and note the removal in the system ChangeSet."

	| class |
	class _ self at: className asSymbol ifAbsent: [^self].
	class subclasses do:
		[:subclass | self removeClassNamed: subclass name]. 	"remove subclasses first"
	SystemChanges removeClass: class.
	SystemOrganization removeElement: className.
	self removeKey: className asSymbol.
	self flushClassNameCache.
	class obsolete.
