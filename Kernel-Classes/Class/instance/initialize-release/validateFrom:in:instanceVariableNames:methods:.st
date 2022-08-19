validateFrom: oldClass in: environ instanceVariableNames: invalidFields methods: invalidMethods
	"Recompile the receiver and redefine its subclasses if necessary."

	super
		validateFrom: oldClass
		in: environ
		instanceVariableNames: invalidFields
		methods: invalidMethods.
	self ~~ oldClass
		ifTrue:
			[environ at: name put: self.
			self updateInheritanceTables: oldClass.
			oldClass obsolete]
