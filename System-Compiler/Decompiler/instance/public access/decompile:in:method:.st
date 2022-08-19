decompile: aSelector in: aClass method: aMethod
	"answer with a parse tree (root is a MethodNode) for this method"
	^self
		decompile: aSelector
		in: aClass
		method: aMethod
		using: DecompilerConstructor new
