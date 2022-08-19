doCommand: command page: filePage error: e
	| done |
	done _ Semaphore new.
	self dskprim: fileDirectory diskNumber
		address: filePage address
		command: command
		page: filePage page
		semaphore: done.
	error<0 ifFalse: [done wait].
	error ~= 0
		ifTrue:
			[e isNil ifTrue: [^nil].
			error _ self errorString: error.
			self error: e]
		ifFalse:
			[error _ ''.
			^filePage]
