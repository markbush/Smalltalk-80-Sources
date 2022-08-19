scanFieldNames: stringOrArray
	"Answer with an Array of strings which are the identifiers in the input string.
	If passed an Array, just answer with that Array (it has already been scanned)."
	| strm |
	(stringOrArray isMemberOf: Array)
		ifTrue: [^stringOrArray].
	self scan: (ReadStream on: stringOrArray asString).
	strm _ WriteStream on: (Array new: 10).
	[tokenType = #doIt]
		whileFalse:
			[tokenType = #word ifTrue: [strm nextPut: token].
			self scanToken].
	^strm contents

	"Scanner new scanFieldNames: 'abc  def ghi' ('abc' 'def' 'ghi' )"
