close
	closed
		ifFalse:
			[dirFile close.
			bitsFile == nil ifFalse: ["an interrupted open?" bitsFile close].
			super close]
