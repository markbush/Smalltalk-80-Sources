remove: oldObject
	"Remove oldObject as one of the receiver's elements.  Answer oldObject unless
	no element is equal to oldObject, in which case, create an error message."

	^self remove: oldObject ifAbsent: [self errorNotFound]
