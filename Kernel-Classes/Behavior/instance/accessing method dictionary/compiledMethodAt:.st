compiledMethodAt: selector
	"Answer the compiled method associated with the message selector in the
	receiver's method dictionary.  If the selector is not in the dictionary,
	create an error notification."

	^methodDict at: selector
