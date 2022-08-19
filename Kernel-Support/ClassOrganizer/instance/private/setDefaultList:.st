setDefaultList: aSortedCollection
	self classComment: ''.
	categoryArray _ Array with: Default.
	categoryStops _ Array with: aSortedCollection size.
	elementArray _ aSortedCollection asArray
