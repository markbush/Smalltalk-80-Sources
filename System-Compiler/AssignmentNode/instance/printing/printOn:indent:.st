printOn: aStream indent: level
	variable printOn: aStream indent: level.
	aStream nextPutAll: ' _ '.
	value printOn: aStream indent: level + 2
