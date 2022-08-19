readsField: varIndex
	"Answer whether the receiver loads the instance variable indexed
	by the argument."

	self isReturnField ifTrue: [^self returnField + 1 = varIndex].
	varIndex <= 16 ifTrue: [^self scanFor: varIndex - 1].
	^self scanLongLoad: varIndex - 1
