newNamed: aSymbol otherSupers: others
	"Answer a new instance of me whose name is the argument, aSymbol."
	^ (MetaclassForMultipleInheritance subclassOf: self and: others) new
		superclass: Object
		methodDict: MethodDictionary new
		format: -8192
		name: aSymbol
		organization: ClassOrganizer new
		instVarNames: nil
		classPool: nil
		sharedPools: nil
