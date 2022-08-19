intern: aString
	"Answer a unique Symbol whose characters are those of aString."

	| sym index |
	self hasInterned: aString ifTrue: [:sym | ^sym].
	 "check if already exists"
	sym _ (aString isMemberOf: Symbol)
		ifTrue: [aString] "putting old symbol in new table"
		ifFalse: [(Symbol new: aString size) string: aString]. "create a new one"
	index _ aString stringhash \\ USTable size + 1.
	USTable at: index put: ((USTable at: index) copyWith: sym).
	^sym
