compileBroadcastCodeFor: selector
	"compile code that invokes ALL methods for 'selector' in my inheritance hierarchy"
	| implementors strm keywords argNames |
	implementors _ self withAllSuperclasses select:
		[:each | each includesSelector: selector].
	argNames _ Array new: selector numArgs.
	1 to: argNames size do: [:i | argNames at: i put: 'arg' , i printString].
	strm _ WriteStream on: (String new: 500).
	strm nextPutAll: 'all.'.
	argNames size=0
		ifTrue: [strm nextPutAll: selector]
		ifFalse: [keywords _ selector keywords.
				1 to: argNames size do:
					[:i | strm nextPutAll: (keywords at: i); space;
						nextPutAll: (argNames at: i); space]].
	implementors do:
		[:each | strm cr; tab; nextPutAll: 'self '; nextPutAll: each name; nextPut: $. .
			argNames size=0
				ifTrue: [strm nextPutAll: selector]
				ifFalse: [keywords _ selector keywords.
						1 to: argNames size do:
							[:i | strm nextPutAll: (keywords at: i); space;
								nextPutAll: (argNames at: i); space]].
			strm nextPut: $.].
	self compileUnchecked: strm contents
