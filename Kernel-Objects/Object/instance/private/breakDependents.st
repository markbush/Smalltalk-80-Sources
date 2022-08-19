breakDependents
	"Deallocate the soft field for the receiver's dependents."

	DependentsFields removeKey: self ifAbsent: []
