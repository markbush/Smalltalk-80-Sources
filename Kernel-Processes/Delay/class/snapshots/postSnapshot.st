postSnapshot
	ActiveDelay~~nil
		ifTrue: [ActiveDelay postSnapshot.
				  SuspendedDelays do: [ :delay | delay postSnapshot].
				  ActiveDelay reactivate].
	AccessProtect signal
