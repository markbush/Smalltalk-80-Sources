preSnapshot
	AccessProtect wait.
	ActiveDelay~~nil
		ifTrue: [ActiveDelay preSnapshot].
	SuspendedDelays do:
		[ :delay | delay preSnapshot]
