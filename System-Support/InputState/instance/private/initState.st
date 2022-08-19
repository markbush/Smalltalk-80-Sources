initState
	timeProtect _ Semaphore forMutualExclusion.
	timeProtect critical: [deltaTime _ baseTime _ 0].
	x _ y _ 0.
	keyboardQueue _ SharedQueue new: 50.
	ctrlState _ lshiftState _ rshiftState _ lockState _ metaState _ 0.
	bitState _ 0
