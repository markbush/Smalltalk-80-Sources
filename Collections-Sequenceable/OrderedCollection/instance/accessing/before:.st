before: oldObject
	"Answer the element before oldObject.  If the receiver does not contain oldObject
	or if the receiver contains no elements before oldObject, create an error message."

	| index |
	index _ self find: oldObject.
	index = firstIndex
		ifTrue: [^self errorFirstObject]
		ifFalse: [^self basicAt: index - 1]
