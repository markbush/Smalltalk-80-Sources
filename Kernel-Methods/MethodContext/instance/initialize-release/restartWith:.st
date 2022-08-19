restartWith: aCompiledMethod
	"Reinitialize the receiver as though it had been for a different method.  Used
	by a Debugger when one of the methods to which it refers is recompiled."

	method _ aCompiledMethod.
	^self restart
