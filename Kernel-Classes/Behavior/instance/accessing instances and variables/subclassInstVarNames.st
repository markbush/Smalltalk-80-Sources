subclassInstVarNames
	"Answer a Set of the names of the receiver's subclasses' instance variables."
	| vars |
	vars _ Set new.
	self allSubclasses do: [:aSubclass | vars addAll: aSubclass instVarNames].
	^vars
