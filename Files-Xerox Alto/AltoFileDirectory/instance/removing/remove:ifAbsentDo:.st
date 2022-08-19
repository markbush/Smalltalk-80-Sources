remove: aFile ifAbsentDo: aBlock
	(self findFileOrHole: aFile) ifFalse: [^aBlock value: aFile].
	self removeOld: aFile
