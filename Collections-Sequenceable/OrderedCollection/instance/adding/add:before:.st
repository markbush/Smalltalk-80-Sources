add: newObject before: oldObject
	"Add the argument, newObject, as an element of the receiver.  Put it
	in the position just preceding oldObject.  Answer newObject."

	| index |
	index _ self find: oldObject.
	self insert: newObject before: index.
	^newObject
