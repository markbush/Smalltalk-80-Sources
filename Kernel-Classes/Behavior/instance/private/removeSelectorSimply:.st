removeSelectorSimply: selector
	"Remove the message selector from the receiver's method dictionary.
	Internal access from compiler."

	methodDict removeKey: selector ifAbsent: [^self].
	self flushCache
