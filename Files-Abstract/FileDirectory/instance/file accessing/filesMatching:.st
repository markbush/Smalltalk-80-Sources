filesMatching: pattern
	"Answer an Array of the names of files that match the string, pattern."
	| names name |
	names _ WriteStream on: (Array new: 10).
	self do:
		[:each |
		name _ each fileName.
		(pattern match: name)
			ifTrue:
				[name last = $. ifTrue: [name _ name copyFrom: 1 to: name size - 1].
				names nextPut: name]].
	^names contents
