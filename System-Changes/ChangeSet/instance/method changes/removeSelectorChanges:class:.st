removeSelectorChanges: selector class: class
	"Remove all memory of changes associated with the argument,
	selector, in this class."

	| dictionary |
	dictionary _ methodChanges at: class name ifAbsent: [^self].
	dictionary removeKey: selector ifAbsent: [].
	dictionary isEmpty ifTrue: [methodChanges removeKey: class name]
