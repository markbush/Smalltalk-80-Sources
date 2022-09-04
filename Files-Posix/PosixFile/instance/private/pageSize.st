pageSize
	cachedPageSize isNil ifTrue: [cachedPageSize _ self pageClass new pageSize].
	^cachedPageSize
