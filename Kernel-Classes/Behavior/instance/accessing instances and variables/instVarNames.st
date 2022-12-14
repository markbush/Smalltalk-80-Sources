instVarNames
	"Answer an Array of the instance variable names.  Behaviors must make up fake
	local instance variable names because Behaviors have instance variables for the
	purpose of compiling methods, but these are not named instance variables.  "

	| mySize superSize |
	mySize _ self instSize.
	superSize _
		superclass == nil
			ifTrue: [0]
			ifFalse: [superclass instSize].
	mySize = superSize ifTrue: [^#()].
	^(superSize + 1 to: mySize) collect: [:i | 'inst' , i printString]
