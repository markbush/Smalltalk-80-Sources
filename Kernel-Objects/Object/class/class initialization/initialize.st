initialize
	(self confirm: 'Do you really want to initialize
class Object?  It will reset all dependents.')
		ifTrue:
			[self initializeDependentsFields.
			self initializeErrorRecursion]

	"Object initialize"
