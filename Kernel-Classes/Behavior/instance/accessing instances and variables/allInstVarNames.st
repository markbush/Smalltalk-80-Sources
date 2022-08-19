allInstVarNames
	"Answer an Array of the names of the receiver's instance variables."
	| names |
	names _ OrderedCollection new.
	self accumulateInstVarNames: names traversedClasses: Set new.
	^names
