broadcast: aSymbol
	"Send the argument, aSymbol, as a unary message to all of the receiver's dependents."

	self dependents ~~ nil
		ifTrue: [self dependents do:
					[:aDependent | aDependent perform: aSymbol]]
