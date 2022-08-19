listName: aString changes: aChangeCollection removed: aSet
	listName _ aString.
	changes addAll: aChangeCollection.
	list addAll: aChangeCollection.
	removed addAll: aSet
