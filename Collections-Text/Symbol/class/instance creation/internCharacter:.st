internCharacter: aCharacter
	"Answer with, and create if necessary, a unique Symbol whose characters
	 are just this character."
	| ascii |
	(ascii _ aCharacter asciiValue) < 128
		ifTrue: [^SingleCharSymbols at: ascii + 1].
	^self intern: (String with: aCharacter)
