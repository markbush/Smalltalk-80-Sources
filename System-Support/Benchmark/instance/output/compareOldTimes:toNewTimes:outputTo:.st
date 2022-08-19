compareOldTimes: oldName toNewTimes: newName outputTo: outName
	"Compare two sets of benchmark ouput reports."

	| oldDict newDict labels compareStream oldTime newTime |
	oldDict _ Dictionary new. newDict _ Dictionary new. labels _ OrderedCollection new.
	self readOutput: (self outputNamed: oldName) intoDict: oldDict andCollection: nil.
	self readOutput: (self outputNamed: newName) intoDict: newDict andCollection: labels.
	compareStream _ self makeOutputNamed: outName.
	labels do:
		[:label | (oldDict includesKey: label) ifTrue:
			[compareStream nextPutAll: label; cr; tab;
				nextPutAll: 'old time: ', (oldTime _ oldDict at: label) printString; tab;
				nextPutAll: 'new time: ', (newTime _ newDict at: label) printString; tab;
				nextPutAll: 'percent change: ', (newTime - oldTime * 100.0 / oldTime) printString; cr; cr]].
	self closeOutput: compareStream

	"Benchmark new
		compareOldTimes: 'test1.timing'
		toNewTimes: 'test2.timing'
		outputTo: 'compare1-2.timing'"

	"Benchmark new displayOutputNamed: 'compare1-2.timing'"
