removeKey: key ifAbsent: errorBlock
	self removeDangerouslyKey: key ifAbsent: [^errorBlock value]
