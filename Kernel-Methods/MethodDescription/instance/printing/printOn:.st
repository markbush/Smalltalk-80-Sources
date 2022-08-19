printOn: strm
	status==#methodNotImplemented ifTrue:
		[strm nextPutAll: 'MethodDescription(methodNotImplemented)'.  ^self].
	status==#conflictingMethods ifTrue:
		[strm nextPutAll: 'MethodDescription(conflictingMethods)'.  ^self].
	strm nextPutAll: 'MethodDescription(';
		nextPutAll: whichClass name;
		nextPut: $, ;
		nextPutAll: selector;
		nextPut: $)
