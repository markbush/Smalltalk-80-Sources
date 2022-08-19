subclassOf: newSuper oldClass: oldClass instanceVariableNames: newInstVarString variable: v words: w pointers: p ifBad: badBlock
	"Basic initialization message for creating classes using the information provided
	as arguments.  Answer whether old instances will be invalidated."

	| old new usedNames invalid oldSuperMeta newInstVarArray |
	old _ self allInstVarNames.
	usedNames _ #(self super thisContext true false nil ) asSet.
	newInstVarArray _ Scanner new scanFieldNames: newInstVarString.
	(invalid _ superclass ~~ newSuper)
		ifTrue:
			["superclass changed"
			oldSuperMeta _ superclass class.
			superclass removeSubclass: self.
			superclass _ newSuper.
			superclass addSubclass: self.
			self class superclass == oldSuperMeta
				ifTrue: ["Only false when self is a metaclass"
						self class superclass: newSuper class]].
	instanceVariables _ nil.  "To give us all super names"
	new _ self allInstVarNames , newInstVarArray.
	new do:
		[:fieldName |
		(usedNames includes: fieldName)
			ifTrue:
				[self error: fieldName , ' is reserved (maybe in a superclass)'.
				^badBlock value].
		usedNames add: fieldName].
	instanceVariables _ newInstVarArray size = 0
		ifTrue: [nil]
		ifFalse: [newInstVarArray].
	invalid _ invalid | (new ~= old).
	"field names changed"
	old _ format.
	self
		format: new size
		variable: v
		words: w
		pointers: p.
	invalid _ invalid | (format ~= old).
	"format changed"
	^invalid
