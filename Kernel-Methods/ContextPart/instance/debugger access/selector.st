selector
	"Answer the selector of the method that created the receiver."

	^self receiver class
		selectorAtMethod: self method
		setClass: [:ignored]
