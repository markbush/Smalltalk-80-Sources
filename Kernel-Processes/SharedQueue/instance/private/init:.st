init: size
	contentsArray _ Array new: size.
	readPosition _ 1.
	writePosition _ 1.
	accessProtect _ Semaphore forMutualExclusion.
	readSynch _ Semaphore new
