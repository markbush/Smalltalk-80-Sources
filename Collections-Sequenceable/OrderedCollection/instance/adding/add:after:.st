add: newObject after: oldObject
	"Add the argument, newObject, as an element of the receiver.  Put it
	in the position just succeeding oldObject.  Answer newObject."

	| index |
	index _ self find: oldObject.
	self insert: newObject before: index + 1.
	^newObject
