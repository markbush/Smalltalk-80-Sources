parseArgsAndTemps: aString notifying: req
	"(for debugger) parse the string and answer with a two-element Array containing Arrays of Strings (the arg and temp names)"

	aString == nil ifTrue: [^#()].
	^self
		initPattern: aString
		notifying: req
		return: [:pattern | (pattern at: 2) , self temporaries]
