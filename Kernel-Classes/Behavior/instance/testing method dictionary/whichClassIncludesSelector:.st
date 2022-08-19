whichClassIncludesSelector: aSymbol
	"Answer the class on the receiver's superclass chain where the argument, aSymbol
	(a message selector), will be found."

	(methodDict includesKey: aSymbol) ifTrue: [^self].
	superclass == nil ifTrue: [^nil].
	^superclass whichClassIncludesSelector: aSymbol

	"Rectangle whichClassIncludesSelector: #inspect."
