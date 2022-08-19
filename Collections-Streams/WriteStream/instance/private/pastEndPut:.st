pastEndPut: anObject
	collection grow.
	writeLimit _ collection size.
	collection at: (position _ position + 1) put: anObject
