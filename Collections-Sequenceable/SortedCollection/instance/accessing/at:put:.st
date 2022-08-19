at: anInteger put: anObject
	"Storing into a SortedCollection with at:put: is not allowed."

	self error: 'to add to a sorted collection, you must use add:'
