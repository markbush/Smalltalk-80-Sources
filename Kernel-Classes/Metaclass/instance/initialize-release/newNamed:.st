newNamed: aSymbol
	"Answer a new instance of me whose name is the argument, aSymbol."
	^(Metaclass subclassOf: self) new
		superclass: Object
		methodDict: MethodDictionary new
		format: -8192
		name: aSymbol
		organization: ClassOrganizer new
		instVarNames: nil
		classPool: nil
		sharedPools: nil
