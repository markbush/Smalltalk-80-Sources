= descr
	self isConflictingMethods ifTrue: [^descr isConflictingMethods].
	self isMethodNotImplemented ifTrue: [^descr isMethodNotImplemented].
	^(whichClass == descr whichClass) & (selector == descr selector)
