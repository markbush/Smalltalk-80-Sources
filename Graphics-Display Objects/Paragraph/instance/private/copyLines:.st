copyLines: anInterval
	^lines copyFrom: anInterval first to: (anInterval last min: lastLine)
