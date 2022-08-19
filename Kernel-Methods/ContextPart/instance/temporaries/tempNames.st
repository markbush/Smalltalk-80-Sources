tempNames
	"Answer an OrderedCollection of the names of the receiver's temporary
	variables, which are strings."

	| names |
	self method setTempNamesIfCached: [:names | ^names].
	names _ (self mclass compilerClass new
			parse: self sourceCode
			in: self mclass
			notifying: nil) tempNames.
	self method cacheTempNames: names.
	^names
