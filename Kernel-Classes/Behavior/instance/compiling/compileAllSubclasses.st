compileAllSubclasses
	"Compile all the methods in the receiver's subclasses.  This does not modify
	code (re-install the compiled versions), just compiles the methods as a kind of static
	check."

	self allSubclasses do: [:aSubclass | aSubclass compileAll]
