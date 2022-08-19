lines: anArray
	"Install a new set of lines in the paragraph,  a tricky way to avoid recomposing when a press paragraph overflows a page."
	lines _ anArray.
	(lastLine _ (anArray indexOf: nil) - 1) = -1
		ifTrue:	[^ (lastLine _ anArray size)]
		ifFalse:	[^ lastLine].
