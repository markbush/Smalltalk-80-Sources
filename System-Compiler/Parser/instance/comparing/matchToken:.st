matchToken: thing
	"matches the token, not its type"

	here = thing ifTrue: [self advance. ^true].
	^false
