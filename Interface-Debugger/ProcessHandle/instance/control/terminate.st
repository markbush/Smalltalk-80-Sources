terminate
	process == nil ifFalse: [process terminate].
	self release
